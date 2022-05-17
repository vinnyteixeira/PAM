
document.addEventListener('deviceready', onDeviceReady, false);

function onDeviceReady() {

    
    let configDb = {
        name: 'meusqlite',
        location: 'default',
        androidDatabaseProvider: 'system'

    }
    let db = window.sqlitePlugin.openDatabase(configDb);

    db.transaction(function(tx) {
        tx.executeSql('CREATE TABLE IF NOT EXISTS DemoTable (name, score)');
        tx.executeSql('INSERT INTO DemoTable VALUES (?,?)', ['Alice', 101]);
        tx.executeSql('INSERT INTO DemoTable VALUES (?,?)', ['Betty', 202]);
      }, function(error) {
        console.log('Transaction ERROR: ' + error.message);
      }, function() {
        console.log('Populated database OK');
      });

      db.transaction(function(tx) {
        tx.executeSql('SELECT count(*) AS mycount FROM DemoTable', [], function(tx, rs) {
          console.log('Record count (expected to be 2): ' + rs.rows.item(0).mycount);
        }, function(tx, error) {
          console.log('SELECT error: ' + error.message);
        });
      });

    console.log('Running cordova-' + cordova.platformId + '@' + cordova.version);
    document.getElementById('deviceready').classList.add('ready');
}
