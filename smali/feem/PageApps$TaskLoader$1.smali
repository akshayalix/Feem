.class Lfeem/PageApps$TaskLoader$1;
.super Ljava/lang/Object;
.source "PageApps.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/PageApps$TaskLoader;->loadInBackground()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lfeem/InstalledApps$PInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lfeem/PageApps$TaskLoader;


# direct methods
.method constructor <init>(Lfeem/PageApps$TaskLoader;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lfeem/PageApps$TaskLoader$1;->this$0:Lfeem/PageApps$TaskLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lfeem/InstalledApps$PInfo;Lfeem/InstalledApps$PInfo;)I
    .locals 0

    .line 547
    invoke-virtual {p1}, Lfeem/InstalledApps$PInfo;->getAppname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lfeem/InstalledApps$PInfo;->getAppname()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 544
    check-cast p1, Lfeem/InstalledApps$PInfo;

    check-cast p2, Lfeem/InstalledApps$PInfo;

    invoke-virtual {p0, p1, p2}, Lfeem/PageApps$TaskLoader$1;->compare(Lfeem/InstalledApps$PInfo;Lfeem/InstalledApps$PInfo;)I

    move-result p1

    return p1
.end method
