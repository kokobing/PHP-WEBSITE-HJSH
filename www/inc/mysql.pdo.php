<?php
/*
 * Create 2015.06.27 20:25
 */
class PDODB extends PDO{

	private $db_config ;//数据库配置
	private $lastsql = '';//最后一次执行的sql语句
	private $fetch_type = PDO::FETCH_ASSOC;//查询语句返回的数据集类型
	private $sql_stmt = '';//组装的sql语句
	private $query_type = '';//当前正在执行语句类型
	private $error_info = null;//错误信息
	private $log_path = './sql-error.log';//日志存储路径

	public function __construct($config = array()){
		$this->db_config = array(
			'host' => '12.12.12.12',
			'port' => 3306,
			'username' => 'root',
			'password' => '',
			'dbname' => 'test',
			'charset' => 'utf8'
		);
		$this->db_config = array_merge($this->db_config, $config);
		try {
			$dsn = 'mysql:host='.$this->db_config['host'].';port='.$this->db_config['port'].';dbname='.$this->db_config['dbname'];
			parent::__construct($dsn, $this->db_config['username'], $this->db_config['password'], array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES '.$this->db_config['charset']));
			$this->exec('set names '.$this->db_config['charset']);
		} catch (PDOException $e) {
			echo '<p style="color:red">db connect has error!</p><br/><b>错误原因:</b>'.$e->getMessage().'<br/><b>错误报告:</b>';
			echo '<pre>';
			var_dump($e);
			echo '</pre>';
			exit();
		}
	}

	/*
	 * 执行一条SQL语句，适用于比较复杂的SQL语句
	 * 如果是增删改查的语句，建议使用下面进一步封装的语句
	 * 返回值：执行后的结果对象
	 */
	public function queryObj($sql, $data = array()){
		$this->lastsql = $sql;
		$stmt = $this->prepare($sql);
		$stmt->execute($data) ? true : $this->error_info = $stmt->errorInfo();
		return $stmt;
	}

	//查询语句，返回单条结果
	//返回值：一维数组
	public function queryOne($sql, $data = array(), $type = ''){
		$type = !empty($type) ? $type : $this->fetch_type;
		return $this->queryObj($sql, $data)->fetch($type);
	}

	//查询语句，返回所有结果
	//返回值：二维数组
	public function queryAll($sql, $data = array(), $type = ''){
		$type = !empty($type) ? $type : $this->fetch_type;
		return $this->queryObj($sql, $data)->fetchAll($type);
	}

	//执行结果为影响到的行数,只能是insert/delete/update语句
	//返回值：数字，影响到的行数
	public function querySql($sql, $data = array()){
		return $this->queryObj($sql, $data)->rowCount();
	}

	//查询总条目
	public function count($table, $where = '', $data = array()){
		$sql = 'select count(*) as total from `'.$table.'` ';
		$sql .= !empty($where) ? ' WHERE '.$where : '';
		$r = $this->queryOne($sql, $data);
		return isset($r['total']) ? (int)$r['total'] : 0;
	}


	//获取正在执行的sql语句
	public function getLastSql(){
		return $this->lastsql;
	}

	//设置查询结果集类型
	public function setFetchType($type){
		$this->fetch_type = $type;
	}

	//获取错误信息
	public function getErrorInfo($writeLog = false){
		return $writeLog ? $this->log() : array_merge($this->error_info, array('sql'=>$this->lastsql));
	}



/////////////////兼容旧的语句/////////////////////////


	//执行语句
	//返回值：NULL
	public function Execute(){

	}

	//查询语句，返回所有结果
	//返回值：二维数组
	public function getRows($sql, $data = array(), $type = ''){
		$type = !empty($type) ? $type : $this->fetch_type;
		return $this->queryObj($sql, $data)->fetchAll($type);
	}

	//查询语句，返回单条结果
	//返回值：一维数组
	public function fields($sql, $data = array(), $type = ''){
		$type = !empty($type) ? $type : $this->fetch_type;
		return $this->queryObj($sql, $data)->fetch($type);
	}

	//分页查询
	public function SelectLimit($sql,$intRows,$intStart){
		$sql.=" Limit $intStart,$intRows";
		return $this->queryObj($sql)->fetchAll();
	}

	//返回上次插入操作，主键列类型是自增的最后的自增ID
	public function getInsertID(){
		return PDO::lastInsertId();
	}




///////////////////////////////////////////


}



/*

class MyPDOStatement extends PDOStatement
{
  protected $_debugValues = null;

  protected function __construct()
  {
    // need this empty construct()!
  }

  public function execute($values=array())
  {
    $this->_debugValues = $values;
    try {
      $t = parent::execute($values);
      // maybe do some logging here?
    } catch (PDOException $e) {
      // maybe do some logging here?
      throw $e;
    }

    return $t;
  }

  public function _debugQuery($replaced=true)
  {
    $q = $this->queryString;

    if (!$replaced) {
      return $q;
    }

    return preg_replace_callback('/:([0-9a-z_]+)/i', array($this, '_debugReplace'), $q);
  }

  protected function _debugReplace($m)
  {
    $v = $this->_debugValues[$m[1]];
    if ($v === null) {
      return "NULL";
    }
    if (!is_numeric($v)) {
      $v = str_replace("'", "''", $v);
    }

    return "'". $v ."'";
  }
}

$options = array(
  PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
  PDO::ATTR_STATEMENT_CLASS => array('MyPDOStatement', array()),
);


$db = new PDO('mysql:host=localhost;dbname=fixfox', 'root', 'a0525260', $options);


$sth = $db->prepare("SELECT * FROM newsinfo  where id_newsinfo='?' ");
$sth->execute(array($_GET[id]));
$result = $sth->fetch(PDO::FETCH_ASSOC); 
var_dump( $sth->queryString, $sth->_debugQuery() );

*/