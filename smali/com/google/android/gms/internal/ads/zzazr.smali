.class final Lcom/google/android/gms/internal/ads/zzazr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgt<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzdwt:Lcom/google/android/gms/internal/ads/zzazo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzazo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazr;->zzdwt:Lcom/google/android/gms/internal/ads/zzazo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazr;->zzdwt:Lcom/google/android/gms/internal/ads/zzazo;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazo;->zza(Lcom/google/android/gms/internal/ads/zzazo;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazr;->zzdwt:Lcom/google/android/gms/internal/ads/zzazo;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazo;->zza(Lcom/google/android/gms/internal/ads/zzazo;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
