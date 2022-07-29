.class final enum Lfeem/PageAudio$Type;
.super Ljava/lang/Enum;
.source "PageAudio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/PageAudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfeem/PageAudio$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfeem/PageAudio$Type;

.field public static final enum Album:Lfeem/PageAudio$Type;

.field public static final enum Song:Lfeem/PageAudio$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 89
    new-instance v0, Lfeem/PageAudio$Type;

    const/4 v1, 0x0

    const-string v2, "Album"

    invoke-direct {v0, v2, v1}, Lfeem/PageAudio$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfeem/PageAudio$Type;->Album:Lfeem/PageAudio$Type;

    .line 90
    new-instance v0, Lfeem/PageAudio$Type;

    const/4 v2, 0x1

    const-string v3, "Song"

    invoke-direct {v0, v3, v2}, Lfeem/PageAudio$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfeem/PageAudio$Type;->Song:Lfeem/PageAudio$Type;

    const/4 v0, 0x2

    .line 88
    new-array v0, v0, [Lfeem/PageAudio$Type;

    sget-object v3, Lfeem/PageAudio$Type;->Album:Lfeem/PageAudio$Type;

    aput-object v3, v0, v1

    sget-object v1, Lfeem/PageAudio$Type;->Song:Lfeem/PageAudio$Type;

    aput-object v1, v0, v2

    sput-object v0, Lfeem/PageAudio$Type;->$VALUES:[Lfeem/PageAudio$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfeem/PageAudio$Type;
    .locals 1

    .line 88
    const-class v0, Lfeem/PageAudio$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfeem/PageAudio$Type;

    return-object p0
.end method

.method public static values()[Lfeem/PageAudio$Type;
    .locals 1

    .line 88
    sget-object v0, Lfeem/PageAudio$Type;->$VALUES:[Lfeem/PageAudio$Type;

    invoke-virtual {v0}, [Lfeem/PageAudio$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfeem/PageAudio$Type;

    return-object v0
.end method
