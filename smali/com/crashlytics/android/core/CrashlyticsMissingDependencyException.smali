.class public Lcom/crashlytics/android/core/CrashlyticsMissingDependencyException;
.super Ljava/lang/RuntimeException;
.source "CrashlyticsMissingDependencyException.java"


# static fields
.field private static final serialVersionUID:J = -0xffb143a38fa305bL


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-static {p1}, Lcom/crashlytics/android/core/CrashlyticsMissingDependencyException;->buildExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static buildExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
