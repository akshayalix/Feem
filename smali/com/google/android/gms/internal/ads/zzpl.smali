.class final Lcom/google/android/gms/internal/ads/zzpl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzahl:Lcom/google/android/gms/internal/ads/zzit;

.field private final synthetic zzbjg:Lcom/google/android/gms/internal/ads/zzpg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzpg;Lcom/google/android/gms/internal/ads/zzit;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpl;->zzbjg:Lcom/google/android/gms/internal/ads/zzpg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpl;->zzahl:Lcom/google/android/gms/internal/ads/zzit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->zzahl:Lcom/google/android/gms/internal/ads/zzit;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzit;->zzge()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpl;->zzbjg:Lcom/google/android/gms/internal/ads/zzpg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpg;->zza(Lcom/google/android/gms/internal/ads/zzpg;)Lcom/google/android/gms/internal/ads/zzpd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpl;->zzahl:Lcom/google/android/gms/internal/ads/zzit;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzpd;->zzf(Lcom/google/android/gms/internal/ads/zzit;)V

    return-void
.end method
