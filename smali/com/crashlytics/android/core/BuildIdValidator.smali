.class Lcom/crashlytics/android/core/BuildIdValidator;
.super Ljava/lang/Object;
.source "BuildIdValidator.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "This app relies on Crashlytics. Please sign up for access at https://fabric.io/sign_up,\ninstall an Android build tool and ask a team member to invite you to this app\'s organization."


# instance fields
.field private final buildId:Ljava/lang/String;

.field private final requiringBuildId:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/crashlytics/android/core/BuildIdValidator;->buildId:Ljava/lang/String;

    .line 25
    iput-boolean p2, p0, Lcom/crashlytics/android/core/BuildIdValidator;->requiringBuildId:Z

    return-void
.end method


# virtual methods
.method protected getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, "This app relies on Crashlytics. Please sign up for access at https://fabric.io/sign_up,\ninstall an Android build tool and ask a team member to invite you to this app\'s organization."

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/crashlytics/android/core/BuildIdValidator;->buildId:Ljava/lang/String;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "CrashlyticsCore"

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/crashlytics/android/core/BuildIdValidator;->requiringBuildId:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/crashlytics/android/core/BuildIdValidator;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "."

    .line 39
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ".     |  | "

    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ".     |  |"

    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ".   \\ |  | /"

    .line 43
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ".    \\    /"

    .line 44
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ".     \\  /"

    .line 45
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ".      \\/"

    .line 46
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ".      /\\"

    .line 50
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ".     /  \\"

    .line 51
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ".    /    \\"

    .line 52
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ".   / |  | \\"

    .line 53
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance p2, Lcom/crashlytics/android/core/CrashlyticsMissingDependencyException;

    invoke-direct {p2, p1}, Lcom/crashlytics/android/core/CrashlyticsMissingDependencyException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 60
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/crashlytics/android/core/BuildIdValidator;->requiringBuildId:Z

    if-nez p1, :cond_2

    .line 61
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object p1

    const-string p2, "Configured not to require a build ID."

    invoke-interface {p1, v1, p2}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
