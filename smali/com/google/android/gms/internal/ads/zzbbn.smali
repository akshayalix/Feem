.class final synthetic Lcom/google/android/gms/internal/ads/zzbbn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdtf:I

.field private final zzebm:Lcom/google/android/gms/internal/ads/zzbbc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbc;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzebm:Lcom/google/android/gms/internal/ads/zzbbc;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzdtf:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzebm:Lcom/google/android/gms/internal/ads/zzbbc;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbbn;->zzdtf:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbc;->zzdb(I)V

    return-void
.end method
