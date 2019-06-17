package org.owasp.seraphimdroid.helper;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import org.owasp.seraphimdroid.model.Article;
import org.owasp.seraphimdroid.model.Feedback;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class DatabaseHelper extends SQLiteOpenHelper {

	private final static String DB_NAME = "APP_DATABASE";
	private final static int VERSION = 3;

	public final static String TABLE_CALL_LOGS = "call_logs";
	public final static String TABLE_SMS_LOGS = "sms_logs";
	public final static String TABLE_USSD_LOGS = "ussd_logs";
	public static final String TABLE_LOCKS = "locks";
	public static final String TABLE_SERVICES_LOCKS = "services";
	public static final String TABLE_PASS = "password";
	public final static String TABLE_BLACKLIST = "blacklist";
	public final static String TABLE_BLOCKED_USSD = "block_ussd";
	public final static String TABLE_ARTICLES = "articles";
	public final static String TABLE_FEEDBACK = "feedback";
	public final static String TABLE_PERMISSIONS = "permissions";
	public final static String TABLE_USAGE = "usage";

	public static final String createCallTable = "CREATE TABLE IF NOT EXISTS call_logs (_id integer primary key autoincrement, phone_number TEXT , time TEXT, reason TEXT) ";
	public static final String createUSSDTable = "CREATE TABLE IF NOT EXISTS ussd_logs (_id integer primary key autoincrement, phone_number TEXT , time TEXT, reason TEXT) ";
	public static final String createSMSTable = "CREATE TABLE IF NOT EXISTS sms_logs (_id integer primary key autoincrement, phone_number TEXT , time TEXT, reason TEXT, type INTEGER, content TEXT ) ";
	public static final String createPasswordTable = "CREATE TABLE IF NOT EXISTS password (_id integer primary key autoincrement, password BLOB)";
	private static final String createLocksTable = "CREATE TABLE IF NOT EXISTS locks (_id INTEGER primary key autoincrement, package_name TEXT)";
	private static final String createServicesLocksTable = "CREATE TABLE IF NOT EXISTS services (_id INTEGER primary key autoincrement, service_name TEXT)";
	public static final String createBlacklistTable = "CREATE TABLE IF NOT EXISTS blacklist (_id INTEGER PRIMARY KEY AUTOINCREMENT, number TEXT NOT NULL)";
	public static final String createBlockedUSSDTable = "CREATE TABLE IF NOT EXISTS block_ussd (_id INTEGER PRIMARY KEY AUTOINCREMENT, number TEXT NOT NULL, desc TEXT NOT NULL, type TEXT NOT NULL)";
	private static final String createPermissionTable = "CREATE TABLE IF NOT EXISTS permissions (_id INTEGER PRIMARY KEY AUTOINCREMENT, permission TEXT, weight INTEGER, malicious_use TEXT)";
	private static final String createArticlesTable = "CREATE TABLE IF NOT EXISTS articles ( id INTEGER PRIMARY KEY, title TEXT, text TEXT, category TEXT, cachefile TEXT, tags TEXT)";
	private static final String createFeedbackTable = "CREATE TABLE IF NOT EXISTS feedback (  question TEXT, description TEXT, upvotes INTEGER )";
	private static final String createUsageTable = "CREATE TABLE IF NOT EXISTS usage ( id INTEGER, title TEXT, uses INTEGER )";

	public DatabaseHelper(Context context) {
		super(context, DB_NAME, null, VERSION);
	}

	@Override
	public void onCreate(SQLiteDatabase db) {
		db.execSQL(createCallTable);
		db.execSQL(createSMSTable);
		db.execSQL(createUSSDTable);
		db.execSQL(createPasswordTable);
		db.execSQL(createLocksTable);
		db.execSQL(createBlacklistTable);
		db.execSQL(createBlockedUSSDTable);
		db.execSQL(createServicesLocksTable);
		db.execSQL(createPermissionTable);
		db.execSQL(createArticlesTable);
		db.execSQL(createFeedbackTable);
		db.execSQL(createUsageTable);

		populatePermissions(db);
		populateBlockedUSSDList(db);
		populateFeatures(db);
	}

	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {

		switch(oldVersion) {
			case 1:
				db.execSQL("DROP TABLE IF EXISTS call_logs");
				db.execSQL("DROP TABLE IF EXISTS ussd_logs");
				db.execSQL("DROP TABLE IF EXISTS sms_logs");
				db.execSQL("DROP TABLE IF EXISTS locks");
				db.execSQL("DROP TABLE IF EXISTS services");
				db.execSQL("DROP TABLE IF EXISTS blacklist");
				db.execSQL("DROP TABLE IF EXISTS permissions");
				db.execSQL("DROP TABLE IF EXISTS block_ussd");
			case 2:
				db.execSQL("DROP TABLE IF EXISTS articles");
				db.execSQL("DROP TABLE IF EXISTS feedback");
				db.execSQL("DROP TABLE IF EXISTS usage");
			case 3:
				db.execSQL("DROP TABLE IF EXISTS articles");
		}

		this.onCreate(db);
	}


//	Defining DB Models
	private class BlockedUSSD {
		public String number,desc,type;
		public BlockedUSSD(String n,String d,String t) {
			this.number = n;
			this.desc = d;
			this.type = t;
		}
	}

	private class PerData {
		public String permission;
		public int weight;
		public String maliciousUse;

		public PerData(String p, int w, String m) {
			this.permission = p;
			this.weight = w;
			this.maliciousUse = m;
		}
	}

	private class Feature {
		Integer id, uses;
		String title;
		public Feature(Integer id, String title, Integer uses) {
			this.id = id;
			this.uses = uses;
			this.title = title;
		}
	}

	private void populateBlockedUSSDList(SQLiteDatabase db) {
		List<BlockedUSSD> list = new ArrayList<>();
		list.add(new BlockedUSSD("*#7780%23", "Factory Reset","default"));
		list.add(new BlockedUSSD("*2767*3855#", "Full Factory Reset","default"));
		list.add(new BlockedUSSD("*2767*3855%23", "Full Factory Reset","default"));
		list.add(new BlockedUSSD("*#*#7780#*#*", "Factory Reset Data","default"));
		list.add(new BlockedUSSD("*1198#", "Harmful","default"));
		// Writing pre-defined values to db
		ContentValues cv = new ContentValues();
		for (BlockedUSSD bd : list) {
			cv.put("number", bd.number);
			cv.put("desc", bd.desc);
			cv.put("type", bd.type);
			db.insert(TABLE_BLOCKED_USSD, null, cv);
			cv.clear();
		}
	}
	
	private void populatePermissions(SQLiteDatabase db) {
		List<PerData> list = new ArrayList<>();

		list.add(new PerData("android.permission.ACCESS_COARSE_LOCATION", 1, ""));
		list.add(new PerData("android.permission.ACCESS_FINE_LOCATION", 2, ""));
		list.add(new PerData(
				"android.permission.ACCESS_LOCATION_EXTRA_COMMANDS", 1, ""));
		list.add(new PerData("android.permission.ACCESS_NETWORK_STATE", 1, ""));
		list.add(new PerData("android.permission.ACCOUNT_MANAGER", 4, ""));
		list.add(new PerData("android.permission.AUTHENTICATE_ACCOUNTS", 4, ""));
		list.add(new PerData("android.permission.BLUETOOTH", 2, ""));
		list.add(new PerData("android.permission.BLUETOOTH_ADMIN", 4, ""));
		list.add(new PerData("android.permission.BLUETOOTH_PRIVILEGED", 4, ""));
		list.add(new PerData("android.permission.BRICK", 20,
				"Can disable the device"));
		list.add(new PerData("android.permission.BROADCAST_SMS", 2, ""));
		list.add(new PerData("android.permission.CALL_PHONE", 10,
				"Able to make premium phone calls without users notice"));
		list.add(new PerData("android.permission.CALL_PRIVILEGED", 15,
				"Able to make premium phone calls without users notice"));
		list.add(new PerData("android.permission.CAMERA", 5, ""));
		list.add(new PerData("android.permission.CAPTURE_AUDIO_OUTPUT", 3, ""));
		list.add(new PerData("android.permission.CAPTURE_SECURE_VIDEO_OUTPUT",
				3, ""));
		list.add(new PerData("android.permission.CAPTURE_VIDEO_OUTPUT", 3, ""));
		list.add(new PerData("android.permission.CHANGE_COFIGURATION", 1, ""));
		list.add(new PerData("android.permission.CHANGE_NETWORK_STATE", 1, ""));
		list.add(new PerData("android.permission.CLEAR_APP_USER_DATA", 1, ""));
		list.add(new PerData("android.permission.CONTROL_LOCATION_UPDATES", 1,
				""));
		list.add(new PerData("android.permission.DELETE_CACHE_FILES", 1, ""));
		list.add(new PerData("android.permission.DELETE_PACKAGES", 6, ""));
		list.add(new PerData("android.permission.DIAGNOSTIC", 3, ""));
		list.add(new PerData("android.permission.DISABLE_KEYGUARD", 7, ""));
		list.add(new PerData(
				"android.permission.FACTORY_TEST",
				15,
				"Since running as root user, application has access to all the data and system functions"));
		list.add(new PerData("android.permission.FLASHLIGHT", 1, ""));
		list.add(new PerData("android.permission.FORCE_BACK", 2, ""));
		list.add(new PerData("android.permission.GET_ACCOUNTS", 6, ""));
		list.add(new PerData("android.permission.GET_PACKAGE_SIZE", 1, ""));
		list.add(new PerData("android.permission.GET_TASKS", 1, ""));
		list.add(new PerData("android.permission.GET_TOP_ACTIVITY_INFO", 1, ""));
		list.add(new PerData("android.permission.GLOBAL_SEARCH", 3, ""));
		list.add(new PerData("android.permission.HARDWARE_TEST", 1, ""));
		list.add(new PerData("android.permission.INJECT_EVENTS", 5, ""));
		list.add(new PerData("android.permission.INSTALL_LOCATION_PROVIDER", 1,
				""));
		list.add(new PerData("android.permission.INSTALL_PACKAGES", 7, ""));
		list.add(new PerData("android.permission.INSTALL_SHORTCUT", 6, ""));
		list.add(new PerData("android.permission.INTERNAL_SYSTEM_WINDOW", 1, ""));
		list.add(new PerData("android.permission.INTERNET", 2, ""));
		list.add(new PerData("android.permission.KILL_BACKGROUND_PROCESSES", 4,
				""));
		list.add(new PerData("android.permission.LOCATION_HARDWARE", 1, ""));
		list.add(new PerData("android.permission.MANAGE_ACCOUNTS", 6, ""));
		list.add(new PerData("android.permission.MANAGE_APP_TOKENS", 1, ""));
		list.add(new PerData("android.permission.MANAGE_DOCUMENTS", 6, ""));
		list.add(new PerData("android.permission.MASTER_CLEAR", 19,
				"Can clear the device"));
		list.add(new PerData("android.permission.MEDIA_CONTENT_CONTROL", 2, ""));
		list.add(new PerData("android.permission.MODIFY_AUDIO_SETTINGS", 1, ""));
		list.add(new PerData("android.permission.MODIFY_PHONE_STATE", 8, ""));
		list.add(new PerData("android.permission.MOUNT_FORMAT_FILESYSTEMS", 18,
				"May format drive, erasing all the data and crushing the device's OS"));
		list.add(new PerData("android.permission.MOUNT_UNMOUNT_FILESYSTEMS",
				18, "May unmount drive, crushing the device's OS"));
		list.add(new PerData("android.permission.NFC", 1, ""));
		list.add(new PerData("android.permission.PROCESS_OUTGOING_CALLS", 10,
				"May modify outgoing calls to go through some premium service"));
		list.add(new PerData("android.permission.READ_CALENDAR", 4, ""));
		list.add(new PerData("android.permission.READ_CALL_LOGS", 4, ""));
		list.add(new PerData("android.permission.READ_CONTACTS", 4, ""));
		list.add(new PerData("android.permission.READ_EXTERNAL_STORAGE", 4, ""));
		list.add(new PerData("android.permission.READ_FRAME_BUFFER", 3, ""));
		list.add(new PerData("android.permission.READ_HISTORY_BOOKMARKS", 5, ""));
		list.add(new PerData("android.permission.READ_LOGS", 5, ""));
		list.add(new PerData("android.permission.READ_PHONE_STATE", 1, ""));
		list.add(new PerData("android.permission.READ_PROFILE", 5, ""));
		list.add(new PerData("android.permission.READ_SOCIAL_STREAM", 5, ""));
		list.add(new PerData("android.permission.READ_SYNC_SETTINGS", 2, ""));
		list.add(new PerData("android.permission.READ_SYNC_STATS", 2, ""));
		list.add(new PerData("android.permission.REBOOT", 10,
				"May periodically reboot the device"));
		list.add(new PerData("android.permission.RECEIVE_BOOT_COMPLETED", 4, ""));
		list.add(new PerData("android.permission.RECEIVE_MMS", 5, ""));
		list.add(new PerData("android.permission.RECEIVE_SMS", 5, ""));
		list.add(new PerData("android.permission.RECEIVE_WAP_PUSH", 1, ""));
		list.add(new PerData("android.permission.RECORD_AUDIO", 3, ""));
		list.add(new PerData("android.permission.REORDER_TASKS", 3, ""));
		list.add(new PerData("android.permission.SEND_SMS", 8,
				"May send premium SMS without user's notice"));
		list.add(new PerData("android.permission.SET_ACTIVITY_WATCHER", 1, ""));
		list.add(new PerData("android.permission.SET_ALARM", 2, ""));
		list.add(new PerData("android.permission.SET_ANIMATION_SCALE", 2, ""));
		list.add(new PerData("android.permission.SET_DEBUG_APP", 4, ""));
		list.add(new PerData("android.permission.SET_POINTER_SPEED", 4, ""));
		list.add(new PerData("android.permission.SET_PROCESS_LIMIT", 9, ""));
		list.add(new PerData("android.permission.SET_TIME", 6, ""));
		list.add(new PerData("android.permission.SET_TIME_ZONE", 6, ""));
		list.add(new PerData("android.permission.SET_WALLPAPER", 4, ""));
		list.add(new PerData("android.permission.SET_WALLPAPER_HINTS", 4, ""));
		list.add(new PerData("android.permission.SIGNAL_PERSISTENT_PROCESS", 2,
				""));
		list.add(new PerData("android.permission.STATUS_BAR", 5, ""));
		list.add(new PerData("android.permission.SUBSCRIBED_FEEDS_READ", 1, ""));
		list.add(new PerData("android.permission.SUBSCRIBED_FEEDS_WRITE", 1, ""));
		list.add(new PerData("android.permission.UNINSTALL_SHORTCUT", 3, ""));
		list.add(new PerData("android.permission.UPDATE_DEVICE_STATS", 3, ""));
		list.add(new PerData("android.permission.USE_CREDENTIALS", 7, ""));
		list.add(new PerData("android.permission.USE_SIP", 1, ""));
		list.add(new PerData("android.permission.VIBRATE", 1, ""));
		list.add(new PerData("android.permission.WAKE_LOCK", 7, ""));
		list.add(new PerData("android.permission.WRITE_APN_SETTINGS", 5, ""));
		list.add(new PerData("android.permission.WRITE_CALENDAR", 3, ""));
		list.add(new PerData("android.permission.WRITE_CALL_LOGS", 3, ""));
		list.add(new PerData("android.permission.WRITE_CONTACTS", 6, ""));
		list.add(new PerData("android.permission.WRITE_EXTERNAL_STORAGE", 5, ""));
		list.add(new PerData("android.permission.WRITE_GSERVICES", 4, ""));
		list.add(new PerData("android.permission.WRITE_HISTORY_BOOKMARKS", 3,
				""));
		list.add(new PerData("android.permission.WRITE_PROFILE", 4, ""));
		list.add(new PerData("android.permission.WRITE_SECURE_SETTINGS", 7, ""));
		list.add(new PerData("android.permission.WRITE_SETTINGS", 8,
				"May change system settings"));
		list.add(new PerData("android.permission.WRITE_SMS", 4, ""));
		list.add(new PerData("android.permission.WRITE_SOCIAL_STREAM", 3, ""));

		// Writing this to database
		ContentValues cv = new ContentValues();
		for (PerData pd : list) {
			cv.put("permission", pd.permission);
			cv.put("weight", pd.weight);
			cv.put("malicious_use", pd.maliciousUse);
			db.insert(TABLE_PERMISSIONS, null, cv);
			cv.clear();
		}
		list.add(new PerData("android.permission.READ_SMS", 5, ""));
	}



//	Feature Usage Tracker
	private void populateFeatures(SQLiteDatabase db) {
		List<Feature> list = new ArrayList<>();
		list.add(new Feature(1, "Permissions Scanner", 0));
		list.add(new Feature(2, "Settings Checker", 0));
		list.add(new Feature(3, "Blocker Logs", 0));
		list.add(new Feature(4, "Application Lock", 0));
		list.add(new Feature(5, "Service Lock", 0));
		list.add(new Feature(6, "Geo-fencing", 0));
		list.add(new Feature(7, "Knowledge Base", 0));

		ContentValues cv = new ContentValues();
		for (Feature fe : list) {
			cv.put("id", fe.id);
			cv.put("title", fe.title);
			cv.put("uses", fe.uses);
			db.insert(TABLE_USAGE, null, cv);
			cv.clear();
		}
	}

	public int getFeatureUsage(int id) {
		SQLiteDatabase db = this.getWritableDatabase();
		Cursor cursor = db.rawQuery("SELECT * FROM usage", null);
		int usages = 0;
		if (cursor.moveToFirst()) {
			do {
				if (cursor.getString(0).equals(Integer.toString(id))){
					usages = Integer.parseInt(cursor.getString(2));
				}
			} while (cursor.moveToNext());
		}
		cursor.close();
		return usages;
	}

	public void removeFeatureUsage(int id){
		SQLiteDatabase db = this.getWritableDatabase();
		int new_val = 0;
		ContentValues cv = new ContentValues();
		cv.put("uses", new_val);
		db.update("usage", cv, "id="+id, null);
	}

	public void addFeatureUsage(int id) {
		SQLiteDatabase db = this.getWritableDatabase();
		int exist = getFeatureUsage(id);
		int new_val = exist + 1;
		ContentValues cv = new ContentValues();
		cv.put("uses", new_val);
		db.update("usage", cv, "id="+id, null);
	}




	//	Feedback Helper Functions
	public void addNewFeedback(ArrayList<Feedback> list) {
		SQLiteDatabase db = this.getWritableDatabase();
		db.execSQL("DROP TABLE IF EXISTS feedback");
		db.execSQL(createFeedbackTable);

		ContentValues cv = new ContentValues();

		for (Feedback fb : list) {
			cv.put("question", fb.getTitle());
			cv.put("description", fb.getDescription());
			cv.put("upvotes", fb.getUpvotes());
			db.insert(TABLE_FEEDBACK, null, cv);
			cv.clear();
		}
		db.close();
	}

	public ArrayList<Feedback> getAllFeedback() {
		ArrayList<Feedback> feedbacks = new ArrayList<>();
		String selectQuery = "SELECT  * FROM " + TABLE_FEEDBACK;

		SQLiteDatabase db = this.getWritableDatabase();
		Cursor cursor = db.rawQuery(selectQuery, null);

		if (cursor.moveToFirst()) {
			do {
				Feedback fb = new Feedback();
				fb.setTitle(cursor.getString(0));
				fb.setDescription(cursor.getString(1));
				fb.setUpvotes(Integer.parseInt(cursor.getString(2)));
				feedbacks.add(fb);
			} while (cursor.moveToNext());
		}
		cursor.close();
		return feedbacks;
	}




	//	Article Helper Functions
	public void addNewArticles(ArrayList<Article> list) {
		SQLiteDatabase db = this.getWritableDatabase();
		db.execSQL("DROP TABLE IF EXISTS articles");
		db.execSQL(createArticlesTable);

		ContentValues cv = new ContentValues();

		for (Article ar : list) {
			cv.put("id", ar.getId());
			cv.put("title", ar.getTitle());
			cv.put("text", ar.getText());
			cv.put("category", ar.getCategory());
			cv.put("cachefile", ar.getCachefile());
			String tags = ar.getTags().toString();
			cv.put("tags", tags.replace("[", "").replace("]", ""));
			db.insert(TABLE_ARTICLES, null, cv);
			cv.clear();
		}
		db.close();
	}

	public ArrayList<Article> getAllArticles() {
		ArrayList<Article> articlesList = new ArrayList<>();
		String selectQuery = "SELECT  * FROM " + TABLE_ARTICLES;
		SQLiteDatabase db = this.getWritableDatabase();
		Cursor cursor = db.rawQuery(selectQuery, null);

		if (cursor.moveToFirst()) {
			do {
				Article article = new Article();
				article.setId(cursor.getString(0));
				article.setTitle(cursor.getString(1));
				article.setText(cursor.getString(2));
				article.setCategory(cursor.getString(3));
				article.setCachefile(cursor.getString(4));
				article.setTags(new ArrayList<>(Arrays.asList(cursor.getString(5).split("\\s*,\\s*"))));
				articlesList.add(article);
			} while (cursor.moveToNext());
		}
		cursor.close();
		return articlesList;
	}

	public ArrayList<Article> getArticlesWithTag(String tag){
		ArrayList<Article> articles = new ArrayList<>();
		String select = "SELECT * FROM " + TABLE_ARTICLES;
		SQLiteDatabase db = this.getWritableDatabase();
		Cursor cursor = db.rawQuery(select, null);

		if (cursor.moveToFirst()) {
			do {
				Article article = new Article();
				article.setId(cursor.getString(0));
				article.setTitle(cursor.getString(1));
				article.setText(cursor.getString(2));
				article.setCategory(cursor.getString(3));
				article.setCachefile(cursor.getString(4));
				article.setTags(new ArrayList<>(Arrays.asList(cursor.getString(5).split("\\s*,\\s*"))));
				if (article.getTags().contains(tag)){
					articles.add(article);
				}
			} while (cursor.moveToNext());
		}
		cursor.close();
		return articles;
	}

}
