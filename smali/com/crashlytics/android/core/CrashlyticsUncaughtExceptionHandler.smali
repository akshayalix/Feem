.class Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$SendSessionRunnable;,
        Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$AnySessionPartFileFilter;,
        Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$SessionPartFileFilter;,
        Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;
    }
.end annotation


# static fields
.field private static final ANALYZER_VERSION:I = 0x1

.field static final ANY_SESSION_FILENAME_FILTER:Ljava/io/FilenameFilter;

.field private static final EVENT_TYPE_CRASH:Ljava/lang/String; = "crash"

.field private static final EVENT_TYPE_LOGGED:Ljava/lang/String; = "error"

.field private static final GENERATOR_FORMAT:Ljava/lang/String; = "Crashlytics Android SDK/%s"

.field private static final INITIAL_SESSION_PART_TAGS:[Ljava/lang/String;

.field static final INVALID_CLS_CACHE_DIR:Ljava/lang/String; = "invalidClsFiles"

.field static final LARGEST_FILE_NAME_FIRST:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_COMPLETE_SESSIONS_COUNT:I = 0x4

.field private static final MAX_LOCAL_LOGGED_EXCEPTIONS:I = 0x40

.field static final MAX_OPEN_SESSIONS:I = 0x8

.field private static final SEND_AT_CRASHTIME_HEADER:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final SESSION_APP_TAG:Ljava/lang/String; = "SessionApp"

.field static final SESSION_BEGIN_TAG:Ljava/lang/String; = "BeginSession"

.field static final SESSION_DEVICE_TAG:Ljava/lang/String; = "SessionDevice"

.field static final SESSION_FATAL_TAG:Ljava/lang/String; = "SessionCrash"

.field static final SESSION_FILE_FILTER:Ljava/io/FilenameFilter;

.field private static final SESSION_FILE_PATTERN:Ljava/util/regex/Pattern;

.field private static final SESSION_ID_LENGTH:I = 0x23

.field static final SESSION_NON_FATAL_TAG:Ljava/lang/String; = "SessionEvent"

.field static final SESSION_OS_TAG:Ljava/lang/String; = "SessionOS"

.field static final SESSION_USER_TAG:Ljava/lang/String; = "SessionUser"

.field static final SMALLEST_FILE_NAME_FIRST:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

.field private final defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final devicePowerStateListener:Lcom/crashlytics/android/core/DevicePowerStateListener;

.field private final eventCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final executorServiceWrapper:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

.field private final fileStore:Lio/fabric/sdk/android/services/persistence/FileStore;

.field private final idManager:Lio/fabric/sdk/android/services/common/IdManager;

.field private final isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final logFileManager:Lcom/crashlytics/android/core/LogFileManager;

.field private final unityVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 119
    new-instance v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$1;

    invoke-direct {v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$1;-><init>()V

    sput-object v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->SESSION_FILE_FILTER:Ljava/io/FilenameFilter;

    .line 127
    new-instance v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$2;

    invoke-direct {v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$2;-><init>()V

    sput-object v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->LARGEST_FILE_NAME_FIRST:Ljava/util/Comparator;

    .line 134
    new-instance v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$3;

    invoke-direct {v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$3;-><init>()V

    sput-object v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->SMALLEST_FILE_NAME_FIRST:Ljava/util/Comparator;

    .line 144
    new-instance v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$4;

    invoke-direct {v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$4;-><init>()V

    sput-object v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->ANY_SESSION_FILENAME_FILTER:Ljava/io/FilenameFilter;

    const-string v0, "([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+"

    .line 151
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->SESSION_FILE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "X-CRASHLYTICS-SEND-FLAGS"

    const-string v1, "1"

    .line 156
    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->SEND_AT_CRASHTIME_HEADER:Ljava/util/Map;

    const/4 v0, 0x4

    .line 182
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SessionUser"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SessionApp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SessionOS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SessionDevice"

    aput-object v2, v0, v1

    sput-object v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->INITIAL_SESSION_PART_TAGS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;Lio/fabric/sdk/android/services/common/IdManager;Lcom/crashlytics/android/core/UnityVersionProvider;Lio/fabric/sdk/android/services/persistence/FileStore;Lcom/crashlytics/android/core/CrashlyticsCore;)V
    .locals 2

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->eventCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 209
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 210
    iput-object p2, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->executorServiceWrapper:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

    .line 211
    iput-object p3, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    .line 212
    iput-object p6, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    .line 213
    invoke-interface {p4}, Lcom/crashlytics/android/core/UnityVersionProvider;->getUnityVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->unityVersion:Ljava/lang/String;

    .line 214
    iput-object p5, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->fileStore:Lio/fabric/sdk/android/services/persistence/FileStore;

    .line 215
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 217
    invoke-virtual {p6}, Lcom/crashlytics/android/core/CrashlyticsCore;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 218
    new-instance p2, Lcom/crashlytics/android/core/LogFileManager;

    invoke-direct {p2, p1, p5}, Lcom/crashlytics/android/core/LogFileManager;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/persistence/FileStore;)V

    iput-object p2, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->logFileManager:Lcom/crashlytics/android/core/LogFileManager;

    .line 219
    new-instance p2, Lcom/crashlytics/android/core/DevicePowerStateListener;

    invoke-direct {p2, p1}, Lcom/crashlytics/android/core/DevicePowerStateListener;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->devicePowerStateListener:Lcom/crashlytics/android/core/DevicePowerStateListener;

    return-void
.end method

.method static synthetic access$000()Ljava/util/regex/Pattern;
    .locals 1

    .line 55
    sget-object v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->SESSION_FILE_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$100(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->handleUncaughtException(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->doCloseSessions(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300()Ljava/util/Map;
    .locals 1

    .line 55
    sget-object v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->SEND_AT_CRASHTIME_HEADER:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;)Lcom/crashlytics/android/core/LogFileManager;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->logFileManager:Lcom/crashlytics/android/core/LogFileManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->doWriteNonFatal(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getCurrentSessionId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;)Ljava/io/File;
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getFilesDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->doOpenSession()V

    return-void
.end method

.method static synthetic access$800(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;)Lcom/crashlytics/android/core/CrashlyticsCore;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    return-object p0
.end method

.method static synthetic access$900(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;Lcom/crashlytics/android/core/internal/models/SessionEventData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeExternalCrashEvent(Lcom/crashlytics/android/core/internal/models/SessionEventData;)V

    return-void
.end method

.method private closeOpenSessions([Ljava/io/File;II)V
    .locals 6

    .line 512
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Closing open sessions."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 515
    aget-object v0, p1, p2

    .line 516
    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getSessionIdFromSessionFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 519
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closing session: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-direct {p0, v0, v2, p3}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeSessionPartsToSessionFile(Ljava/io/File;Ljava/lang/String;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private closeWithoutRenamingOrLog(Lcom/crashlytics/android/core/ClsFileOutputStream;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 542
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/crashlytics/android/core/ClsFileOutputStream;->closeInProgressStream()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 544
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Error closing session file stream in the presence of an exception"

    invoke-interface {v0, v1, v2, p1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static copyToCodedOutputStream(Ljava/io/InputStream;Lcom/crashlytics/android/core/CodedOutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1193
    new-array p2, p2, [B

    const/4 v0, 0x0

    .line 1197
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    array-length v1, p2

    sub-int/2addr v1, v0

    invoke-virtual {p0, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    .line 1202
    :cond_0
    invoke-virtual {p1, p2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawBytes([B)V

    return-void
.end method

.method private deleteLegacyInvalidCacheDir()V
    .locals 5

    .line 722
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v1}, Lcom/crashlytics/android/core/CrashlyticsCore;->getSdkDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "invalidClsFiles"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 724
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 730
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 731
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 732
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 736
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private deleteSessionPartFilesFor(Ljava/lang/String;)V
    .locals 3

    .line 553
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listSessionPartFilesFor(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 554
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private doCloseSessions(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x8

    .line 479
    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->trimOpenSessions(I)V

    .line 481
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listSortedSessionBeginFiles()[Ljava/io/File;

    move-result-object v0

    .line 483
    array-length v1, v0

    const-string v2, "CrashlyticsCore"

    if-gt v1, p1, :cond_0

    .line 484
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object p1

    const-string v0, "No open sessions to be closed."

    invoke-interface {p1, v2, v0}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 488
    :cond_0
    aget-object v1, v0, p1

    invoke-direct {p0, v1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getSessionIdFromSessionFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 493
    invoke-direct {p0, v1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeSessionUser(Ljava/lang/String;)V

    .line 495
    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-static {}, Lcom/crashlytics/android/core/CrashlyticsCore;->getSessionSettingsData()Lio/fabric/sdk/android/services/settings/SessionSettingsData;

    move-result-object v1

    if-nez v1, :cond_1

    .line 498
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object p1

    const-string v0, "Unable to close session. Settings are not loaded."

    invoke-interface {p1, v2, v0}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 503
    :cond_1
    iget v1, v1, Lio/fabric/sdk/android/services/settings/SessionSettingsData;->maxCustomExceptionEvents:I

    invoke-direct {p0, v0, p1, v1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->closeOpenSessions([Ljava/io/File;II)V

    return-void
.end method

.method private doOpenSession()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 456
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 457
    new-instance v1, Lcom/crashlytics/android/core/CLSUUID;

    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-direct {v1, v2}, Lcom/crashlytics/android/core/CLSUUID;-><init>(Lio/fabric/sdk/android/services/common/IdManager;)V

    invoke-virtual {v1}, Lcom/crashlytics/android/core/CLSUUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 459
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening an new session with ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    invoke-interface {v2, v4, v3}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeBeginSession(Ljava/lang/String;Ljava/util/Date;)V

    .line 463
    invoke-direct {p0, v1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeSessionApp(Ljava/lang/String;)V

    .line 464
    invoke-direct {p0, v1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeSessionOS(Ljava/lang/String;)V

    .line 465
    invoke-direct {p0, v1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeSessionDevice(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->logFileManager:Lcom/crashlytics/android/core/LogFileManager;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/LogFileManager;->setCurrentSession(Ljava/lang/String;)V

    return-void
.end method

.method private doWriteNonFatal(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 15

    move-object v8, p0

    const-string v9, "Failed to close non-fatal file output stream."

    const-string v10, "Failed to flush to non-fatal file."

    .line 829
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getCurrentSessionId()Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x0

    const-string v12, "CrashlyticsCore"

    if-nez v11, :cond_0

    .line 832
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v2, "Tried to write a non-fatal exception while no session was open."

    invoke-interface {v0, v12, v2, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 839
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->recordLoggedExceptionEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crashlytics is logging non-fatal exception \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\" from thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v12, v2}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    iget-object v0, v8, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->eventCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->padWithZerosToMaxIntWidth(I)Ljava/lang/String;

    move-result-object v0

    .line 850
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SessionEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 852
    new-instance v13, Lcom/crashlytics/android/core/ClsFileOutputStream;

    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v13, v2, v0}, Lcom/crashlytics/android/core/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 854
    :try_start_1
    invoke-static {v13}, Lcom/crashlytics/android/core/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v6, "error"

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .line 855
    invoke-direct/range {v1 .. v7}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeSessionEvent(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 860
    invoke-static {v14, v10}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v14

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v14

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v13, v1

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v13, v1

    .line 857
    :goto_0
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string v3, "An error occurred in the non-fatal exception logger"

    invoke-interface {v2, v12, v3, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 860
    invoke-static {v1, v10}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 861
    :goto_1
    invoke-static {v13, v9}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    const/16 v0, 0x40

    .line 867
    :try_start_4
    invoke-direct {p0, v11, v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->trimSessionEventFiles(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 869
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v2, "An error occurred when trimming non-fatal files."

    invoke-interface {v0, v12, v2, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :catchall_2
    move-exception v0

    .line 860
    :goto_3
    invoke-static {v1, v10}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 861
    invoke-static {v13, v9}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0
.end method

.method private ensureFileArrayNotNull([Ljava/io/File;)[Ljava/io/File;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 591
    new-array p1, p1, [Ljava/io/File;

    :cond_0
    return-object p1
.end method

.method private getCurrentSessionId()Ljava/lang/String;
    .locals 2

    .line 382
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listSortedSessionBeginFiles()[Ljava/io/File;

    move-result-object v0

    .line 383
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getSessionIdFromSessionFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getFilesDir()Ljava/io/File;
    .locals 1

    .line 1235
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->fileStore:Lio/fabric/sdk/android/services/persistence/FileStore;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/persistence/FileStore;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getPreviousSessionId()Ljava/lang/String;
    .locals 3

    .line 392
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listSortedSessionBeginFiles()[Ljava/io/File;

    move-result-object v0

    .line 393
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getSessionIdFromSessionFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getSessionIdFromSessionFile(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 407
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0x23

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTrimmedNonFatalFiles(Ljava/lang/String;[Ljava/io/File;I)[Ljava/io/File;
    .locals 4

    .line 661
    array-length v0, p2

    if-le v0, p3, :cond_0

    .line 662
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Trimming down to %d logged exceptions."

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    invoke-interface {p2, v1, v0}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    invoke-direct {p0, p1, p3}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->trimSessionEventFiles(Ljava/lang/String;I)V

    .line 666
    new-instance p2, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "SessionEvent"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private getUserMetaData(Ljava/lang/String;)Lcom/crashlytics/android/core/UserMetaData;
    .locals 3

    .line 1215
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->isHandlingException()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/crashlytics/android/core/UserMetaData;

    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getUserIdentifier()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v1}, Lcom/crashlytics/android/core/CrashlyticsCore;->getUserName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/CrashlyticsCore;->getUserEmail()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/crashlytics/android/core/UserMetaData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/crashlytics/android/core/MetaDataStore;

    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/MetaDataStore;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/MetaDataStore;->readUserData(Ljava/lang/String;)Lcom/crashlytics/android/core/UserMetaData;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private handleUncaughtException(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->createCrashMarker()V

    .line 262
    invoke-direct {p0, p1, p2, p3}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeFatal(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 264
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->doCloseSessions()V

    .line 265
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->doOpenSession()V

    .line 267
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->trimSessionFiles()V

    .line 269
    iget-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {p1}, Lcom/crashlytics/android/core/CrashlyticsCore;->shouldPromptUserBeforeSendingCrashReports()Z

    move-result p1

    if-nez p1, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->sendSessionReports()V

    :cond_0
    return-void
.end method

.method private listCompleteSessionFiles()[Ljava/io/File;
    .locals 1

    .line 566
    sget-object v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->SESSION_FILE_FILTER:Ljava/io/FilenameFilter;

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    .line 587
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->ensureFileArrayNotNull([Ljava/io/File;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private listSessionPartFilesFor(Ljava/lang/String;)[Ljava/io/File;
    .locals 1

    .line 562
    new-instance v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$SessionPartFileFilter;

    invoke-direct {v0, p1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$SessionPartFileFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private listSortedSessionBeginFiles()[Ljava/io/File;
    .locals 2

    .line 574
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listSessionBeginFiles()[Ljava/io/File;

    move-result-object v0

    .line 575
    sget-object v1, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->LARGEST_FILE_NAME_FIRST:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private sendSessionReports()V
    .locals 7

    .line 1228
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listCompleteSessionFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1229
    iget-object v4, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->executorServiceWrapper:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

    new-instance v5, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$SendSessionRunnable;

    iget-object v6, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-direct {v5, v6, v3}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$SendSessionRunnable;-><init>(Lcom/crashlytics/android/core/CrashlyticsCore;Ljava/io/File;)V

    invoke-virtual {v4, v5}, Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;->executeAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthesizeSessionFile(Ljava/io/File;Ljava/lang/String;[Ljava/io/File;Ljava/io/File;)V
    .locals 11

    const-string v0, "Failed to close CLS file"

    const-string v1, "CrashlyticsCore"

    const-string v2, "Error flushing session file stream"

    const/4 v3, 0x1

    if-eqz p4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    .line 1091
    :try_start_0
    new-instance v6, Lcom/crashlytics/android/core/ClsFileOutputStream;

    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, p2}, Lcom/crashlytics/android/core/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1092
    :try_start_1
    invoke-static {v6}, Lcom/crashlytics/android/core/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;

    move-result-object v5

    .line 1094
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Collecting SessionStart data for session ID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v1, v8}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    invoke-static {v5, p1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeToCosFromFile(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/io/File;)V

    const/4 p1, 0x4

    .line 1098
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-virtual {v5, p1, v7, v8}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    const/4 p1, 0x5

    .line 1099
    invoke-virtual {v5, p1, v4}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBool(IZ)V

    const/16 p1, 0xb

    .line 1101
    invoke-virtual {v5, p1, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt32(II)V

    const/16 p1, 0xc

    const/4 v3, 0x3

    .line 1103
    invoke-virtual {v5, p1, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeEnum(II)V

    .line 1105
    invoke-direct {p0, v5, p2}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeInitialPartsTo(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;)V

    .line 1107
    invoke-static {v5, p3, p2}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeNonFatalEventsTo(Lcom/crashlytics/android/core/CodedOutputStream;[Ljava/io/File;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    .line 1110
    invoke-static {v5, p4}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeToCosFromFile(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1120
    :cond_1
    invoke-static {v5, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1129
    invoke-static {v6, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v6, v5

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v6, v5

    .line 1113
    :goto_1
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write session file for session ID: "

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, v1, p2, p1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1120
    invoke-static {v5, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1125
    invoke-direct {p0, v6}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->closeWithoutRenamingOrLog(Lcom/crashlytics/android/core/ClsFileOutputStream;)V

    :goto_2
    return-void

    :catchall_1
    move-exception p1

    .line 1120
    :goto_3
    invoke-static {v5, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1129
    invoke-static {v6, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1
.end method

.method private trimOpenSessions(I)V
    .locals 8

    .line 625
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 627
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listSortedSessionBeginFiles()[Ljava/io/File;

    move-result-object v1

    .line 628
    array-length v2, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    .line 631
    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getSessionIdFromSessionFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 632
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 635
    :cond_0
    iget-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->logFileManager:Lcom/crashlytics/android/core/LogFileManager;

    invoke-virtual {p1, v0}, Lcom/crashlytics/android/core/LogFileManager;->discardOldLogFiles(Ljava/util/Set;)V

    .line 637
    new-instance p1, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$AnySessionPartFileFilter;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$AnySessionPartFileFilter;-><init>(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$1;)V

    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    .line 639
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 640
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 641
    sget-object v5, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->SESSION_FILE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 643
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    const/4 v6, 0x1

    .line 644
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 646
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 647
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trimming open session file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "CrashlyticsCore"

    invoke-interface {v5, v6, v4}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private trimSessionEventFiles(Ljava/lang/String;I)V
    .locals 3

    .line 604
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "SessionEvent"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->SMALLEST_FILE_NAME_FIRST:Ljava/util/Comparator;

    invoke-static {v0, v1, p2, p1}, Lcom/crashlytics/android/core/Utils;->capFileCount(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V

    return-void
.end method

.method private writeBeginSession(Ljava/lang/String;Ljava/util/Date;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Failed to close begin session file."

    const-string v1, "Failed to flush to session begin file."

    const/4 v2, 0x0

    .line 878
    :try_start_0
    new-instance v3, Lcom/crashlytics/android/core/ClsFileOutputStream;

    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getFilesDir()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "BeginSession"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/crashlytics/android/core/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 879
    :try_start_1
    invoke-static {v3}, Lcom/crashlytics/android/core/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;

    move-result-object v2

    .line 881
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Crashlytics Android SDK/%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v8}, Lcom/crashlytics/android/core/CrashlyticsCore;->getVersion()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 883
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 885
    invoke-static {v2, p1, v4, v5, v6}, Lcom/crashlytics/android/core/SessionProtobufHelper;->writeBeginSession(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 887
    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 888
    invoke-static {v3, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v3, v2

    .line 887
    :goto_0
    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 888
    invoke-static {v3, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1
.end method

.method private writeExternalCrashEvent(Lcom/crashlytics/android/core/internal/models/SessionEventData;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "CrashlyticsCore"

    const-string v1, "Failed to close fatal exception file output stream."

    const-string v2, "Failed to flush to session begin file."

    const/4 v3, 0x0

    .line 790
    :try_start_0
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getPreviousSessionId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 793
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object p1

    const-string v4, "Tried to write a native crash while no session was open."

    invoke-interface {p1, v0, v4, v3}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    invoke-static {v3, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 821
    invoke-static {v3, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    .line 800
    :cond_0
    :try_start_1
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "<native-crash [%s (%s)]>"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p1, Lcom/crashlytics/android/core/internal/models/SessionEventData;->signal:Lcom/crashlytics/android/core/internal/models/SignalData;

    iget-object v9, v9, Lcom/crashlytics/android/core/internal/models/SignalData;->code:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p1, Lcom/crashlytics/android/core/internal/models/SessionEventData;->signal:Lcom/crashlytics/android/core/internal/models/SignalData;

    iget-object v9, v9, Lcom/crashlytics/android/core/internal/models/SignalData;->name:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/crashlytics/android/core/CrashlyticsCore;->recordFatalExceptionEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    new-instance v5, Lcom/crashlytics/android/core/ClsFileOutputStream;

    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getFilesDir()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "SessionCrash"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/crashlytics/android/core/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 808
    :try_start_2
    invoke-static {v5}, Lcom/crashlytics/android/core/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;

    move-result-object v3

    .line 810
    new-instance v6, Lcom/crashlytics/android/core/MetaDataStore;

    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/crashlytics/android/core/MetaDataStore;-><init>(Ljava/io/File;)V

    invoke-virtual {v6, v4}, Lcom/crashlytics/android/core/MetaDataStore;->readKeyData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 812
    new-instance v7, Lcom/crashlytics/android/core/LogFileManager;

    iget-object v8, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v8}, Lcom/crashlytics/android/core/CrashlyticsCore;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->fileStore:Lio/fabric/sdk/android/services/persistence/FileStore;

    invoke-direct {v7, v8, v9, v4}, Lcom/crashlytics/android/core/LogFileManager;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/persistence/FileStore;Ljava/lang/String;)V

    .line 814
    invoke-static {p1, v7, v6, v3}, Lcom/crashlytics/android/core/NativeCrashWriter;->writeNativeCrash(Lcom/crashlytics/android/core/internal/models/SessionEventData;Lcom/crashlytics/android/core/LogFileManager;Ljava/util/Map;Lcom/crashlytics/android/core/CodedOutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v5, v3

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v5, v3

    .line 817
    :goto_0
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string v6, "An error occurred in the native crash logger"

    invoke-interface {v4, v0, v6, p1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 820
    :goto_1
    invoke-static {v3, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 821
    invoke-static {v5, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception p1

    .line 820
    :goto_2
    invoke-static {v3, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 821
    invoke-static {v5, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1
.end method

.method private writeFatal(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 14

    const-string v1, "CrashlyticsCore"

    const-string v2, "Failed to close fatal exception file output stream."

    const-string v3, "Failed to flush to session begin file."

    const/4 v4, 0x0

    .line 752
    :try_start_0
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getCurrentSessionId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 755
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v5, "Tried to write a fatal exception while no session was open."

    invoke-interface {v0, v1, v5, v4}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    invoke-static {v4, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 772
    invoke-static {v4, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    .line 762
    :cond_0
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/crashlytics/android/core/CrashlyticsCore;->recordFatalExceptionEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    new-instance v5, Lcom/crashlytics/android/core/ClsFileOutputStream;

    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getFilesDir()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SessionCrash"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Lcom/crashlytics/android/core/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 765
    :try_start_2
    invoke-static {v5}, Lcom/crashlytics/android/core/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;

    move-result-object v4

    const-string v12, "crash"

    const/4 v13, 0x1

    move-object v7, p0

    move-object v8, v4

    move-object v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 766
    invoke-direct/range {v7 .. v13}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeSessionEvent(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v5, v4

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v5, v4

    .line 768
    :goto_0
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v6

    const-string v7, "An error occurred in the fatal exception logger"

    invoke-interface {v6, v1, v7, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 771
    :goto_1
    invoke-static {v4, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 772
    invoke-static {v5, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v0

    .line 771
    :goto_2
    invoke-static {v4, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 772
    invoke-static {v5, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0
.end method

.method private writeInitialPartsTo(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1156
    sget-object v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->INITIAL_SESSION_PART_TAGS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1157
    new-instance v5, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 1160
    array-length v6, v5

    const-string v7, " data for session ID "

    const-string v8, "CrashlyticsCore"

    if-nez v6, :cond_0

    .line 1161
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t find "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v5, v8, v4, v6}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1164
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Collecting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v8, v4}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    aget-object v4, v5, v2

    invoke-static {p1, v4}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeToCosFromFile(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/io/File;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static writeNonFatalEventsTo(Lcom/crashlytics/android/core/CodedOutputStream;[Ljava/io/File;Ljava/lang/String;)V
    .locals 11

    const-string v0, "CrashlyticsCore"

    .line 1140
    sget-object v1, Lio/fabric/sdk/android/services/common/CommonUtils;->FILE_MODIFIED_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1142
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 1144
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Found Non Fatal for session ID %s in %s "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    invoke-static {p0, v4}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeToCosFromFile(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 1149
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    const-string v6, "Error writting non-fatal to session."

    invoke-interface {v5, v0, v6, v4}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeSessionApp(Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Failed to close session app file."

    const-string v1, "Failed to flush to session app file."

    const/4 v2, 0x0

    .line 896
    :try_start_0
    new-instance v3, Lcom/crashlytics/android/core/ClsFileOutputStream;

    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getFilesDir()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "SessionApp"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Lcom/crashlytics/android/core/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 897
    :try_start_1
    invoke-static {v3}, Lcom/crashlytics/android/core/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 899
    :try_start_2
    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/common/IdManager;->getAppIdentifier()Ljava/lang/String;

    move-result-object v6

    .line 900
    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/CrashlyticsCore;->getApiKey()Ljava/lang/String;

    move-result-object v7

    .line 901
    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/CrashlyticsCore;->getVersionCode()Ljava/lang/String;

    move-result-object v8

    .line 902
    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/CrashlyticsCore;->getVersionName()Ljava/lang/String;

    move-result-object v9

    .line 903
    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/common/IdManager;->getAppInstallIdentifier()Ljava/lang/String;

    move-result-object v10

    .line 904
    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/CrashlyticsCore;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->determineFrom(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    move-result-object v2

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->getId()I

    move-result v11

    .line 907
    iget-object v12, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->unityVersion:Ljava/lang/String;

    move-object v5, p1

    invoke-static/range {v5 .. v12}, Lcom/crashlytics/android/core/SessionProtobufHelper;->writeSessionApp(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 910
    invoke-static {p1, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 911
    invoke-static {v3, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v13, v2

    move-object v2, p1

    move-object p1, v13

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v3, v2

    move-object v2, p1

    move-object p1, v3

    .line 910
    :goto_0
    invoke-static {p1, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 911
    invoke-static {v3, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2
.end method

.method private writeSessionDevice(Ljava/lang/String;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "Failed to close session device file."

    const-string v3, "Failed to flush session device info."

    const/4 v4, 0x0

    .line 937
    :try_start_0
    new-instance v5, Lcom/crashlytics/android/core/ClsFileOutputStream;

    invoke-direct/range {p0 .. p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "SessionDevice"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lcom/crashlytics/android/core/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 938
    :try_start_1
    invoke-static {v5}, Lcom/crashlytics/android/core/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;

    move-result-object v4

    .line 940
    iget-object v0, v1, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 941
    new-instance v6, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 943
    iget-object v7, v1, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v7}, Lio/fabric/sdk/android/services/common/IdManager;->getDeviceUUID()Ljava/lang/String;

    move-result-object v8

    .line 944
    invoke-static {}, Lio/fabric/sdk/android/services/common/CommonUtils;->getCpuArchitectureInt()I

    move-result v9

    .line 945
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v11

    .line 946
    invoke-static {}, Lio/fabric/sdk/android/services/common/CommonUtils;->getTotalRamInBytes()J

    move-result-wide v12

    .line 947
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v7

    int-to-long v14, v7

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long v14, v14, v6

    .line 948
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->isEmulator(Landroid/content/Context;)Z

    move-result v16

    .line 950
    iget-object v6, v1, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v6}, Lio/fabric/sdk/android/services/common/IdManager;->getDeviceIdentifiers()Ljava/util/Map;

    move-result-object v17

    .line 952
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->getDeviceState(Landroid/content/Context;)I

    move-result v18

    .line 954
    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v19, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v20, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    move-object v7, v4

    invoke-static/range {v7 .. v20}, Lcom/crashlytics/android/core/SessionProtobufHelper;->writeSessionDevice(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;ILjava/lang/String;IJJZLjava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 958
    invoke-static {v4, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 959
    invoke-static {v5, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v5, v4

    .line 958
    :goto_0
    invoke-static {v4, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 959
    invoke-static {v5, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0
.end method

.method private writeSessionEvent(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 988
    iget-object v1, v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v1}, Lcom/crashlytics/android/core/CrashlyticsCore;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 989
    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v7, v2, v4

    .line 990
    invoke-static {v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->getBatteryLevel(Landroid/content/Context;)F

    move-result v21

    .line 991
    iget-object v2, v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->devicePowerStateListener:Lcom/crashlytics/android/core/DevicePowerStateListener;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/DevicePowerStateListener;->isPowerConnected()Z

    move-result v2

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->getBatteryVelocity(Landroid/content/Context;Z)I

    move-result v22

    .line 993
    invoke-static {v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->getProximitySensorEnabled(Landroid/content/Context;)Z

    move-result v23

    .line 994
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 995
    invoke-static {}, Lio/fabric/sdk/android/services/common/CommonUtils;->getTotalRamInBytes()J

    move-result-wide v3

    invoke-static {v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->calculateFreeRamInBytes(Landroid/content/Context;)J

    move-result-wide v5

    sub-long v24, v3, v5

    .line 997
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->calculateUsedDiskSpaceInBytes(Ljava/lang/String;)J

    move-result-wide v26

    .line 1000
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->getAppProcessInfo(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v17

    .line 1002
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    .line 1003
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v12

    .line 1004
    iget-object v3, v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v3}, Lcom/crashlytics/android/core/CrashlyticsCore;->getBuildId()Ljava/lang/String;

    move-result-object v20

    .line 1005
    iget-object v3, v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v3}, Lio/fabric/sdk/android/services/common/IdManager;->getAppIdentifier()Ljava/lang/String;

    move-result-object v19

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p6, :cond_1

    .line 1009
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v5

    .line 1010
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/Thread;

    .line 1012
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1013
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Thread;

    aput-object v10, v6, v3

    .line 1014
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    move-object v13, v6

    goto :goto_1

    .line 1020
    :cond_1
    new-array v3, v3, [Ljava/lang/Thread;

    move-object v13, v3

    :goto_1
    const-string v3, "com.crashlytics.CollectCustomKeys"

    .line 1024
    invoke-static {v1, v3, v4}, Lio/fabric/sdk/android/services/common/CommonUtils;->getBooleanResourceValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1026
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    goto :goto_2

    .line 1028
    :cond_2
    iget-object v1, v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v1}, Lcom/crashlytics/android/core/CrashlyticsCore;->getAttributes()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1029
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-le v3, v4, :cond_3

    .line 1033
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    move-object v15, v3

    goto :goto_3

    :cond_3
    :goto_2
    move-object v15, v1

    .line 1037
    :goto_3
    iget-object v1, v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->logFileManager:Lcom/crashlytics/android/core/LogFileManager;

    move-object/from16 v16, v1

    move-object/from16 v6, p1

    move-object/from16 v9, p5

    move-object/from16 v10, p4

    move-object/from16 v11, p3

    move/from16 v18, v2

    invoke-static/range {v6 .. v27}, Lcom/crashlytics/android/core/SessionProtobufHelper;->writeSessionEvent(Lcom/crashlytics/android/core/CodedOutputStream;JLjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;Ljava/util/Map;Lcom/crashlytics/android/core/LogFileManager;Landroid/app/ActivityManager$RunningAppProcessInfo;ILjava/lang/String;Ljava/lang/String;FIZJJ)V

    return-void
.end method

.method private writeSessionOS(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Failed to close session OS file."

    const-string v1, "Failed to flush to session OS file."

    const/4 v2, 0x0

    .line 920
    :try_start_0
    new-instance v3, Lcom/crashlytics/android/core/ClsFileOutputStream;

    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getFilesDir()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "SessionOS"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Lcom/crashlytics/android/core/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 921
    :try_start_1
    invoke-static {v3}, Lcom/crashlytics/android/core/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;

    move-result-object v2

    .line 923
    iget-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {p1}, Lcom/crashlytics/android/core/CrashlyticsCore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lio/fabric/sdk/android/services/common/CommonUtils;->isRooted(Landroid/content/Context;)Z

    move-result p1

    .line 925
    invoke-static {v2, p1}, Lcom/crashlytics/android/core/SessionProtobufHelper;->writeSessionOS(Lcom/crashlytics/android/core/CodedOutputStream;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 927
    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 928
    invoke-static {v3, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v3, v2

    .line 927
    :goto_0
    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 928
    invoke-static {v3, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1
.end method

.method private writeSessionPartsToSessionFile(Ljava/io/File;Ljava/lang/String;I)V
    .locals 11

    .line 1051
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Collecting session parts for ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    invoke-interface {v0, v2, v1}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    new-instance v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SessionCrash"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 1055
    array-length v4, v0

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1056
    :goto_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    aput-object p2, v8, v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v1

    const-string v9, "Session %s has fatal exception: %s"

    invoke-static {v6, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    new-instance v5, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "SessionEvent"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1061
    array-length v6, v5

    if-lez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 1062
    :goto_1
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v7, v1

    const-string v1, "Session %s has non-fatal exceptions: %s"

    invoke-static {v9, v1, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v2, v1}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_3

    if-eqz v6, :cond_2

    goto :goto_2

    .line 1071
    :cond_2
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No events present for session ID "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v2, p3}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1066
    :cond_3
    :goto_2
    invoke-direct {p0, p2, v5, p3}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getTrimmedNonFatalFiles(Ljava/lang/String;[Ljava/io/File;I)[Ljava/io/File;

    move-result-object p3

    if-eqz v4, :cond_4

    .line 1068
    aget-object v0, v0, v3

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 1069
    :goto_3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->synthesizeSessionFile(Ljava/io/File;Ljava/lang/String;[Ljava/io/File;Ljava/io/File;)V

    .line 1075
    :goto_4
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removing session part files for ID "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v2, p3}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    invoke-direct {p0, p2}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->deleteSessionPartFilesFor(Ljava/lang/String;)V

    return-void
.end method

.method private writeSessionUser(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Failed to close session user file."

    const-string v1, "Failed to flush session user file."

    const/4 v2, 0x0

    .line 967
    :try_start_0
    new-instance v3, Lcom/crashlytics/android/core/ClsFileOutputStream;

    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getFilesDir()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "SessionUser"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/crashlytics/android/core/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 968
    :try_start_1
    invoke-static {v3}, Lcom/crashlytics/android/core/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;

    move-result-object v2

    .line 970
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getUserMetaData(Ljava/lang/String;)Lcom/crashlytics/android/core/UserMetaData;

    move-result-object p1

    .line 973
    invoke-virtual {p1}, Lcom/crashlytics/android/core/UserMetaData;->isEmpty()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    .line 980
    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 981
    invoke-static {v3, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    .line 977
    :cond_0
    :try_start_2
    iget-object v4, p1, Lcom/crashlytics/android/core/UserMetaData;->id:Ljava/lang/String;

    iget-object v5, p1, Lcom/crashlytics/android/core/UserMetaData;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/crashlytics/android/core/UserMetaData;->email:Ljava/lang/String;

    invoke-static {v2, v4, v5, p1}, Lcom/crashlytics/android/core/SessionProtobufHelper;->writeSessionUser(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 980
    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 981
    invoke-static {v3, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v3, v2

    .line 980
    :goto_0
    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 981
    invoke-static {v3, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1
.end method

.method private static writeToCosFromFile(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Failed to close file input stream."

    .line 1175
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1176
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to include a file that doesn\'t exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CrashlyticsCore"

    invoke-interface {p0, v0, p1, v2}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 1183
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1185
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-static {v1, p0, p1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->copyToCodedOutputStream(Ljava/io/InputStream;Lcom/crashlytics/android/core/CodedOutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1187
    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v1, v2

    :goto_0
    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method cacheKeyData(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->executorServiceWrapper:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

    new-instance v1, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$9;

    invoke-direct {v1, p0, p1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$9;-><init>(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;->executeAsync(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method cacheUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->executorServiceWrapper:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

    new-instance v1, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$8;-><init>(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;->executeAsync(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method cleanInvalidTempFiles()V
    .locals 2

    .line 676
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->executorServiceWrapper:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

    new-instance v1, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$12;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$12;-><init>(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;->executeAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method doCleanInvalidTempFiles([Ljava/io/File;)V
    .locals 11

    .line 691
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->deleteLegacyInvalidCacheDir()V

    .line 696
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 697
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found invalid session part file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CrashlyticsCore"

    invoke-interface {v4, v6, v5}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-direct {p0, v3}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getSessionIdFromSessionFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 700
    new-instance v4, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$13;

    invoke-direct {v4, p0, v3}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$13;-><init>(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;Ljava/lang/String;)V

    .line 707
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleting all part files for invalid session: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v6, v3}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-direct {p0, v4}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    aget-object v7, v3, v5

    .line 710
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Deleting session file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v6, v9}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method doCloseSessions()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 470
    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->doCloseSessions(Z)V

    return-void
.end method

.method finalizeSessions()Z
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->executorServiceWrapper:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

    new-instance v1, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$11;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$11;-><init>(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;->executeSyncLoggingException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method hasOpenSession()Z
    .locals 1

    .line 412
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listSessionBeginFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isHandlingException()Z
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method listSessionBeginFiles()[Ljava/io/File;
    .locals 2

    .line 570
    new-instance v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;

    const-string v1, "BeginSession"

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method openSession()V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->executorServiceWrapper:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

    new-instance v1, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$10;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$10;-><init>(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;->executeAsync(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method trimSessionFiles()V
    .locals 4

    .line 620
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getFilesDir()Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->SESSION_FILE_FILTER:Ljava/io/FilenameFilter;

    sget-object v2, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->SMALLEST_FILE_NAME_FIRST:Ljava/util/Comparator;

    const/4 v3, 0x4

    invoke-static {v0, v1, v3, v2}, Lcom/crashlytics/android/core/Utils;->capFileCount(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V

    return-void
.end method

.method public declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5

    monitor-enter p0

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 228
    :try_start_1
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crashlytics is handling uncaught exception \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\" from thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->devicePowerStateListener:Lcom/crashlytics/android/core/DevicePowerStateListener;

    invoke-virtual {v1}, Lcom/crashlytics/android/core/DevicePowerStateListener;->dispose()V

    .line 234
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 235
    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->executorServiceWrapper:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

    new-instance v3, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$5;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$5;-><init>(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;->executeSyncLoggingException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics completed exception processing. Invoking default exception handler."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 250
    iget-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 243
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    const-string v4, "An error occurred in the uncaught exception handler"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics completed exception processing. Invoking default exception handler."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 250
    iget-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 252
    :goto_1
    monitor-exit p0

    return-void

    .line 246
    :goto_2
    :try_start_5
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    const-string v4, "Crashlytics completed exception processing. Invoking default exception handler."

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v2, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 250
    iget-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method writeNonFatalException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .line 303
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 305
    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->executorServiceWrapper:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

    new-instance v2, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$7;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$7;-><init>(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;->executeAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method writeToLog(JLjava/lang/String;)V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->executorServiceWrapper:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

    new-instance v1, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$6;-><init>(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;->executeAsync(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method
