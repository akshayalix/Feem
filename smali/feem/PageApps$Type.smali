.class final enum Lfeem/PageApps$Type;
.super Ljava/lang/Enum;
.source "PageApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/PageApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfeem/PageApps$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfeem/PageApps$Type;

.field public static final enum App:Lfeem/PageApps$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 85
    new-instance v0, Lfeem/PageApps$Type;

    const/4 v1, 0x0

    const-string v2, "App"

    invoke-direct {v0, v2, v1}, Lfeem/PageApps$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfeem/PageApps$Type;->App:Lfeem/PageApps$Type;

    const/4 v0, 0x1

    .line 84
    new-array v0, v0, [Lfeem/PageApps$Type;

    sget-object v2, Lfeem/PageApps$Type;->App:Lfeem/PageApps$Type;

    aput-object v2, v0, v1

    sput-object v0, Lfeem/PageApps$Type;->$VALUES:[Lfeem/PageApps$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfeem/PageApps$Type;
    .locals 1

    .line 84
    const-class v0, Lfeem/PageApps$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfeem/PageApps$Type;

    return-object p0
.end method

.method public static values()[Lfeem/PageApps$Type;
    .locals 1

    .line 84
    sget-object v0, Lfeem/PageApps$Type;->$VALUES:[Lfeem/PageApps$Type;

    invoke-virtual {v0}, [Lfeem/PageApps$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfeem/PageApps$Type;

    return-object v0
.end method
