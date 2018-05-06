const mysqlx = require('@mysql/xdevapi');
const assert = require('assert');

const dbName = 'myproject';

const url = `mysqlx://root@my-db:3306/${dbName}`;

const main = async () => {
  try {
    const session = await mysqlx.getSession(url);
    console.log('Successful server connection');

    const db = session.getSchema(dbName);

    session.close();
  } catch (err) {
    console.error(err.stack);
    process.exit(1);
  }
}

main();
