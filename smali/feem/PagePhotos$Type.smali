.class final enum Lfeem/PagePhotos$Type;
.super Ljava/lang/Enum;
.source "PagePhotos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/PagePhotos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfeem/PagePhotos$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfeem/PagePhotos$Type;

.field public static final enum Date:Lfeem/PagePhotos$Type;

.field public static final enum Picture:Lfeem/PagePhotos$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 88
    new-instance v0, Lfeem/PagePhotos$Type;

    const/4 v1, 0x0

    const-string v2, "Picture"

    invoke-direct {v0, v2, v1}, Lfeem/PagePhotos$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfeem/PagePhotos$Type;->Picture:Lfeem/PagePhotos$Type;

    .line 89
    new-instance v0, Lfeem/PagePhotos$Type;

    const/4 v2, 0x1

    const-string v3, "Date"

    invoke-direct {v0, v3, v2}, Lfeem/PagePhotos$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfeem/PagePhotos$Type;->Date:Lfeem/PagePhotos$Type;

    const/4 v0, 0x2

    .line 87
    new-array v0, v0, [Lfeem/PagePhotos$Type;

    sget-object v3, Lfeem/PagePhotos$Type;->Picture:Lfeem/PagePhotos$Type;

    aput-object v3, v0, v1

    sget-object v1, Lfeem/PagePhotos$Type;->Date:Lfeem/PagePhotos$Type;

    aput-object v1, v0, v2

    sput-object v0, Lfeem/PagePhotos$Type;->$VALUES:[Lfeem/PagePhotos$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfeem/PagePhotos$Type;
    .locals 1

    .line 87
    const-class v0, Lfeem/PagePhotos$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfeem/PagePhotos$Type;

    return-object p0
.end method

.method public static values()[Lfeem/PagePhotos$Type;
    .locals 1

    .line 87
    sget-object v0, Lfeem/PagePhotos$Type;->$VALUES:[Lfeem/PagePhotos$Type;

    invoke-virtual {v0}, [Lfeem/PagePhotos$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfeem/PagePhotos$Type;

    return-object v0
.end method
