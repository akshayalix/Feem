.class final Lcom/google/android/gms/internal/ads/zzlt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbat:Lcom/google/android/gms/internal/ads/zzlp;

.field private final synthetic zzbau:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzlp;Ljava/io/IOException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlt;->zzbat:Lcom/google/android/gms/internal/ads/zzlp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzlt;->zzbau:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlt;->zzbat:Lcom/google/android/gms/internal/ads/zzlp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzlp;->zze(Lcom/google/android/gms/internal/ads/zzlp;)Lcom/google/android/gms/internal/ads/zzma;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlt;->zzbau:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzma;->zzb(Ljava/io/IOException;)V

    return-void
.end method
