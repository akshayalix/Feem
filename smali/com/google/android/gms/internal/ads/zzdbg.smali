.class public final Lcom/google/android/gms/internal/ads/zzdbg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzgos:I = 0x1

.field public static final enum zzgot:I = 0x2

.field public static final enum zzgou:I = 0x3

.field private static final synthetic zzgov:[I

.field public static final enum zzgow:I

.field private static final synthetic zzgox:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [I

    sget v1, Lcom/google/android/gms/internal/ads/zzdbg;->zzgos:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/internal/ads/zzdbg;->zzgot:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Lcom/google/android/gms/internal/ads/zzdbg;->zzgou:I

    const/4 v4, 0x2

    aput v1, v0, v4

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdbg;->zzgov:[I

    sput v3, Lcom/google/android/gms/internal/ads/zzdbg;->zzgow:I

    new-array v0, v3, [I

    sget v1, Lcom/google/android/gms/internal/ads/zzdbg;->zzgow:I

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdbg;->zzgox:[I

    return-void
.end method

.method public static zzapn()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdbg;->zzgov:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static zzapo()[I
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdbg;->zzgox:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
