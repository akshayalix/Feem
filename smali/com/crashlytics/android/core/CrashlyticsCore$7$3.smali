.class Lcom/crashlytics/android/core/CrashlyticsCore$7$3;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/CrashlyticsCore$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/crashlytics/android/core/CrashlyticsCore$7;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashlyticsCore$7;)V
    .locals 0

    .line 1039
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsCore$7$3;->this$1:Lcom/crashlytics/android/core/CrashlyticsCore$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1042
    iget-object p2, p0, Lcom/crashlytics/android/core/CrashlyticsCore$7$3;->this$1:Lcom/crashlytics/android/core/CrashlyticsCore$7;

    iget-object p2, p2, Lcom/crashlytics/android/core/CrashlyticsCore$7;->this$0:Lcom/crashlytics/android/core/CrashlyticsCore;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->setShouldSendUserReportsWithoutPrompting(Z)V

    .line 1043
    iget-object p2, p0, Lcom/crashlytics/android/core/CrashlyticsCore$7$3;->this$1:Lcom/crashlytics/android/core/CrashlyticsCore$7;

    iget-object p2, p2, Lcom/crashlytics/android/core/CrashlyticsCore$7;->val$latch:Lcom/crashlytics/android/core/CrashlyticsCore$OptInLatch;

    invoke-virtual {p2, v0}, Lcom/crashlytics/android/core/CrashlyticsCore$OptInLatch;->setOptIn(Z)V

    .line 1044
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
