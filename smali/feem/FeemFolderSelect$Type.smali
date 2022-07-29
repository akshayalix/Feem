.class final enum Lfeem/FeemFolderSelect$Type;
.super Ljava/lang/Enum;
.source "FeemFolderSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/FeemFolderSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfeem/FeemFolderSelect$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfeem/FeemFolderSelect$Type;

.field public static final enum File:Lfeem/FeemFolderSelect$Type;

.field public static final enum Folder:Lfeem/FeemFolderSelect$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 57
    new-instance v0, Lfeem/FeemFolderSelect$Type;

    const/4 v1, 0x0

    const-string v2, "File"

    invoke-direct {v0, v2, v1}, Lfeem/FeemFolderSelect$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfeem/FeemFolderSelect$Type;->File:Lfeem/FeemFolderSelect$Type;

    .line 58
    new-instance v0, Lfeem/FeemFolderSelect$Type;

    const/4 v2, 0x1

    const-string v3, "Folder"

    invoke-direct {v0, v3, v2}, Lfeem/FeemFolderSelect$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfeem/FeemFolderSelect$Type;->Folder:Lfeem/FeemFolderSelect$Type;

    const/4 v0, 0x2

    .line 56
    new-array v0, v0, [Lfeem/FeemFolderSelect$Type;

    sget-object v3, Lfeem/FeemFolderSelect$Type;->File:Lfeem/FeemFolderSelect$Type;

    aput-object v3, v0, v1

    sget-object v1, Lfeem/FeemFolderSelect$Type;->Folder:Lfeem/FeemFolderSelect$Type;

    aput-object v1, v0, v2

    sput-object v0, Lfeem/FeemFolderSelect$Type;->$VALUES:[Lfeem/FeemFolderSelect$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfeem/FeemFolderSelect$Type;
    .locals 1

    .line 56
    const-class v0, Lfeem/FeemFolderSelect$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfeem/FeemFolderSelect$Type;

    return-object p0
.end method

.method public static values()[Lfeem/FeemFolderSelect$Type;
    .locals 1

    .line 56
    sget-object v0, Lfeem/FeemFolderSelect$Type;->$VALUES:[Lfeem/FeemFolderSelect$Type;

    invoke-virtual {v0}, [Lfeem/FeemFolderSelect$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfeem/FeemFolderSelect$Type;

    return-object v0
.end method
