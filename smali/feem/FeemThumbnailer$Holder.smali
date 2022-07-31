.class Lfeem/FeemThumbnailer$Holder;
.super Ljava/lang/Object;
.source "FeemThumbnailer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/FeemThumbnailer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lfeem/FeemThumbnailer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lfeem/FeemThumbnailer;

    invoke-direct {v0}, Lfeem/FeemThumbnailer;-><init>()V

    sput-object v0, Lfeem/FeemThumbnailer$Holder;->INSTANCE:Lfeem/FeemThumbnailer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
