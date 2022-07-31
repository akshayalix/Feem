.class final Lcom/crashlytics/android/ndk/ProcMapEntryParser;
.super Ljava/lang/Object;
.source "ProcMapEntryParser.java"


# static fields
.field private static final MAP_REGEX:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\s*(\\p{XDigit}+)-\\s*(\\p{XDigit}+)\\s+(.{4})\\s+\\p{XDigit}+\\s+.+\\s+\\d+\\s+(.+)"

    .line 16
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/ndk/ProcMapEntryParser;->MAP_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isRelevant(JJLjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/16 p0, 0x78

    .line 44
    invoke-virtual {p4, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/16 p0, 0x2f

    invoke-virtual {p5, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/crashlytics/android/ndk/ProcMapEntry;
    .locals 13

    .line 28
    sget-object v0, Lcom/crashlytics/android/ndk/ProcMapEntryParser;->MAP_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v0, 0x2

    .line 35
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v11, v2, v9

    const/4 v0, 0x3

    .line 36
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x4

    .line 37
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    move-wide v3, v9

    move-wide v5, v11

    move-object v8, p0

    .line 39
    invoke-static/range {v3 .. v8}, Lcom/crashlytics/android/ndk/ProcMapEntryParser;->isRelevant(JJLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/crashlytics/android/ndk/ProcMapEntry;

    move-object v3, v0

    move-wide v4, v9

    move-wide v6, v11

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/crashlytics/android/ndk/ProcMapEntry;-><init>(JJLjava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0
.end method
