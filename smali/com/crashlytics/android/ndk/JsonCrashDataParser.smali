.class Lcom/crashlytics/android/ndk/JsonCrashDataParser;
.super Ljava/lang/Object;
.source "JsonCrashDataParser.java"


# static fields
.field private static final CUSTOM_KEY_JSON_SESSION:Ljava/lang/String; = "json_session"

.field private static final DATA_DIR:Ljava/lang/String; = "/data"

.field private static final EMPTY_BINARY_IMAGES:[Lcom/crashlytics/android/core/internal/models/BinaryImageData;

.field private static final EMPTY_FRAMES:[Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

.field private static final EMPTY_THREADS:[Lcom/crashlytics/android/core/internal/models/ThreadData;

.field static final KEY_AVAILABLE_INTERNAL_STORAGE:Ljava/lang/String; = "available_internal_storage"

.field static final KEY_AVAILABLE_PHYSICAL_MEMORY:Ljava/lang/String; = "available_physical_memory"

.field static final KEY_BATTERY_CAPACITY:Ljava/lang/String; = "battery"

.field static final KEY_BATTERY_VELOCITY:Ljava/lang/String; = "battery_velocity"

.field static final KEY_CRASHED:Ljava/lang/String; = "crashed"

.field static final KEY_FRAMES:Ljava/lang/String; = "frames"

.field static final KEY_MAPS:Ljava/lang/String; = "maps"

.field static final KEY_ORIENTATION:Ljava/lang/String; = "orientation"

.field static final KEY_PC:Ljava/lang/String; = "pc"

.field static final KEY_PROXIMITY_ENABLED:Ljava/lang/String; = "proximity_enabled"

.field static final KEY_SIG_CODE:Ljava/lang/String; = "sig_code"

.field static final KEY_SIG_NAME:Ljava/lang/String; = "sig_name"

.field static final KEY_SI_ADDR:Ljava/lang/String; = "si_addr"

.field static final KEY_SYMBOL:Ljava/lang/String; = "symbol"

.field static final KEY_THREADS:Ljava/lang/String; = "threads"

.field static final KEY_THREAD_NAME:Ljava/lang/String; = "name"

.field static final KEY_TIME:Ljava/lang/String; = "time"

.field static final KEY_TOTAL_INTERNAL_STORAGE:Ljava/lang/String; = "total_internal_storage"

.field static final KEY_TOTAL_PHYSICAL_MEMORY:Ljava/lang/String; = "total_physical_memory"

.field private static final TAG:Ljava/lang/String; = "JsonCrashDataParser"


# instance fields
.field private final fileIdStrategy:Lcom/crashlytics/android/ndk/FileIdStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 52
    new-array v1, v0, [Lcom/crashlytics/android/core/internal/models/BinaryImageData;

    sput-object v1, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->EMPTY_BINARY_IMAGES:[Lcom/crashlytics/android/core/internal/models/BinaryImageData;

    .line 53
    new-array v1, v0, [Lcom/crashlytics/android/core/internal/models/ThreadData;

    sput-object v1, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->EMPTY_THREADS:[Lcom/crashlytics/android/core/internal/models/ThreadData;

    .line 54
    new-array v0, v0, [Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

    sput-object v0, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->EMPTY_FRAMES:[Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    new-instance v0, Lcom/crashlytics/android/ndk/Sha1FileIdStrategy;

    invoke-direct {v0}, Lcom/crashlytics/android/ndk/Sha1FileIdStrategy;-><init>()V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;-><init>(Lcom/crashlytics/android/ndk/FileIdStrategy;)V

    return-void
.end method

.method constructor <init>(Lcom/crashlytics/android/ndk/FileIdStrategy;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->fileIdStrategy:Lcom/crashlytics/android/ndk/FileIdStrategy;

    return-void
.end method

.method private static correctDataPath(Ljava/io/File;)Ljava/io/File;
    .locals 4

    .line 209
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    :try_start_0
    invoke-static {}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->getInstance()Lcom/crashlytics/android/ndk/CrashlyticsNdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 214
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 216
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "JsonCrashDataParser"

    const-string v3, "Error getting ApplicationInfo"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object p0
.end method

.method private static getLibraryFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 201
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 203
    invoke-static {v0}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->correctDataPath(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public parseBinaryImageData(Lorg/json/JSONObject;)[Lcom/crashlytics/android/core/internal/models/BinaryImageData;
    .locals 11

    const-string v0, "maps"

    .line 123
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    .line 126
    sget-object p1, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->EMPTY_BINARY_IMAGES:[Lcom/crashlytics/android/core/internal/models/BinaryImageData;

    return-object p1

    .line 129
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    .line 130
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 131
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-static {v2}, Lcom/crashlytics/android/ndk/ProcMapEntryParser;->parse(Ljava/lang/String;)Lcom/crashlytics/android/ndk/ProcMapEntry;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 139
    :cond_1
    iget-object v8, v2, Lcom/crashlytics/android/ndk/ProcMapEntry;->path:Ljava/lang/String;

    .line 140
    invoke-static {v8}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->getLibraryFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 143
    :try_start_0
    iget-object v4, p0, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->fileIdStrategy:Lcom/crashlytics/android/ndk/FileIdStrategy;

    invoke-interface {v4, v3}, Lcom/crashlytics/android/ndk/FileIdStrategy;->getId(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    .line 144
    new-instance v10, Lcom/crashlytics/android/core/internal/models/BinaryImageData;

    iget-wide v4, v2, Lcom/crashlytics/android/ndk/ProcMapEntry;->address:J

    iget-wide v6, v2, Lcom/crashlytics/android/ndk/ProcMapEntry;->size:J

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/crashlytics/android/core/internal/models/BinaryImageData;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 148
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not generate ID for file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/crashlytics/android/ndk/ProcMapEntry;->path:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "JsonCrashDataParser"

    invoke-interface {v4, v5, v2, v3}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/crashlytics/android/core/internal/models/BinaryImageData;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/crashlytics/android/core/internal/models/BinaryImageData;

    return-object p1
.end method

.method public parseCrashEventData(Ljava/lang/String;)Lcom/crashlytics/android/core/internal/models/SessionEventData;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 73
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "time"

    .line 74
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 76
    invoke-virtual {p0, v0}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->parseSignalData(Lorg/json/JSONObject;)Lcom/crashlytics/android/core/internal/models/SignalData;

    move-result-object v5

    .line 77
    invoke-virtual {p0, v0}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->parseThreadData(Lorg/json/JSONObject;)[Lcom/crashlytics/android/core/internal/models/ThreadData;

    move-result-object v6

    .line 78
    invoke-virtual {p0, v0}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->parseBinaryImageData(Lorg/json/JSONObject;)[Lcom/crashlytics/android/core/internal/models/BinaryImageData;

    move-result-object v7

    .line 79
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->parseCustomAttributes(Ljava/lang/String;)[Lcom/crashlytics/android/core/internal/models/CustomAttributeData;

    move-result-object v8

    .line 80
    invoke-virtual {p0, v0}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->parseDeviceData(Lorg/json/JSONObject;)Lcom/crashlytics/android/core/internal/models/DeviceData;

    move-result-object v9

    .line 82
    new-instance p1, Lcom/crashlytics/android/core/internal/models/SessionEventData;

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/crashlytics/android/core/internal/models/SessionEventData;-><init>(JLcom/crashlytics/android/core/internal/models/SignalData;[Lcom/crashlytics/android/core/internal/models/ThreadData;[Lcom/crashlytics/android/core/internal/models/BinaryImageData;[Lcom/crashlytics/android/core/internal/models/CustomAttributeData;Lcom/crashlytics/android/core/internal/models/DeviceData;)V

    return-object p1
.end method

.method public parseCustomAttributes(Ljava/lang/String;)[Lcom/crashlytics/android/core/internal/models/CustomAttributeData;
    .locals 3

    const/4 v0, 0x1

    .line 195
    new-array v0, v0, [Lcom/crashlytics/android/core/internal/models/CustomAttributeData;

    new-instance v1, Lcom/crashlytics/android/core/internal/models/CustomAttributeData;

    const-string v2, "json_session"

    invoke-direct {v1, v2, p1}, Lcom/crashlytics/android/core/internal/models/CustomAttributeData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    return-object v0
.end method

.method public parseDeviceData(Lorg/json/JSONObject;)Lcom/crashlytics/android/core/internal/models/DeviceData;
    .locals 14

    const-string v0, "orientation"

    .line 93
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "total_physical_memory"

    .line 94
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v0, "total_internal_storage"

    .line 95
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v0, "available_physical_memory"

    .line 96
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v0, "available_internal_storage"

    .line 97
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    const-string v0, "battery"

    .line 98
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    const-string v0, "battery_velocity"

    const/4 v1, 0x1

    .line 100
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    const-string v0, "proximity_enabled"

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 103
    new-instance p1, Lcom/crashlytics/android/core/internal/models/DeviceData;

    move-object v1, p1

    invoke-direct/range {v1 .. v13}, Lcom/crashlytics/android/core/internal/models/DeviceData;-><init>(IJJJJIIZ)V

    return-object p1
.end method

.method public parseFrameData(Lorg/json/JSONObject;I)[Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;
    .locals 13

    const-string v0, "frames"

    .line 176
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    .line 178
    sget-object p1, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->EMPTY_FRAMES:[Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

    return-object p1

    .line 181
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 182
    new-array v1, v0, [Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 184
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "pc"

    .line 185
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v4, "symbol"

    .line 186
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    move-object v8, v3

    .line 188
    new-instance v3, Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

    const-wide/16 v10, 0x0

    const-string v9, ""

    move-object v5, v3

    move v12, p2

    invoke-direct/range {v5 .. v12}, Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;-><init>(JLjava/lang/String;Ljava/lang/String;JI)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public parseSignalData(Lorg/json/JSONObject;)Lcom/crashlytics/android/core/internal/models/SignalData;
    .locals 4

    const-string v0, ""

    const-string v1, "sig_name"

    .line 116
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig_code"

    .line 117
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "si_addr"

    .line 118
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 119
    new-instance p1, Lcom/crashlytics/android/core/internal/models/SignalData;

    invoke-direct {p1, v1, v0, v2, v3}, Lcom/crashlytics/android/core/internal/models/SignalData;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object p1
.end method

.method public parseThreadData(Lorg/json/JSONObject;)[Lcom/crashlytics/android/core/internal/models/ThreadData;
    .locals 8

    const-string v0, "threads"

    .line 156
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    .line 158
    sget-object p1, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->EMPTY_THREADS:[Lcom/crashlytics/android/core/internal/models/ThreadData;

    return-object p1

    .line 161
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 162
    new-array v1, v0, [Lcom/crashlytics/android/core/internal/models/ThreadData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 164
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    .line 165
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "crashed"

    .line 166
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 168
    :goto_1
    new-instance v7, Lcom/crashlytics/android/core/internal/models/ThreadData;

    invoke-virtual {p0, v4, v6}, Lcom/crashlytics/android/ndk/JsonCrashDataParser;->parseFrameData(Lorg/json/JSONObject;I)[Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

    move-result-object v4

    invoke-direct {v7, v5, v6, v4}, Lcom/crashlytics/android/core/internal/models/ThreadData;-><init>(Ljava/lang/String;I[Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;)V

    aput-object v7, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method
