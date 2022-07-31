.class final enum Lfeem/PageFileBrowser$Type;
.super Ljava/lang/Enum;
.source "PageFileBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/PageFileBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfeem/PageFileBrowser$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfeem/PageFileBrowser$Type;

.field public static final enum File:Lfeem/PageFileBrowser$Type;

.field public static final enum Folder:Lfeem/PageFileBrowser$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 94
    new-instance v0, Lfeem/PageFileBrowser$Type;

    const/4 v1, 0x0

    const-string v2, "Folder"

    invoke-direct {v0, v2, v1}, Lfeem/PageFileBrowser$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfeem/PageFileBrowser$Type;->Folder:Lfeem/PageFileBrowser$Type;

    .line 95
    new-instance v0, Lfeem/PageFileBrowser$Type;

    const/4 v2, 0x1

    const-string v3, "File"

    invoke-direct {v0, v3, v2}, Lfeem/PageFileBrowser$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfeem/PageFileBrowser$Type;->File:Lfeem/PageFileBrowser$Type;

    const/4 v0, 0x2

    .line 93
    new-array v0, v0, [Lfeem/PageFileBrowser$Type;

    sget-object v3, Lfeem/PageFileBrowser$Type;->Folder:Lfeem/PageFileBrowser$Type;

    aput-object v3, v0, v1

    sget-object v1, Lfeem/PageFileBrowser$Type;->File:Lfeem/PageFileBrowser$Type;

    aput-object v1, v0, v2

    sput-object v0, Lfeem/PageFileBrowser$Type;->$VALUES:[Lfeem/PageFileBrowser$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfeem/PageFileBrowser$Type;
    .locals 1

    .line 93
    const-class v0, Lfeem/PageFileBrowser$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfeem/PageFileBrowser$Type;

    return-object p0
.end method

.method public static values()[Lfeem/PageFileBrowser$Type;
    .locals 1

    .line 93
    sget-object v0, Lfeem/PageFileBrowser$Type;->$VALUES:[Lfeem/PageFileBrowser$Type;

    invoke-virtual {v0}, [Lfeem/PageFileBrowser$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfeem/PageFileBrowser$Type;

    return-object v0
.end method
