.class final Lcom/google/android/gms/internal/ads/zzdjo;
.super Lcom/google/android/gms/internal/ads/zzdih;
.source "com.google.android.gms:play-services-ads@@18.3.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdih<",
        "Lcom/google/android/gms/internal/ads/zzdlw;",
        "Lcom/google/android/gms/internal/ads/zzdlv;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgzf:Lcom/google/android/gms/internal/ads/zzdjm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdjm;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzgzf:Lcom/google/android/gms/internal/ads/zzdjm;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzdih;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzdte;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 11
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdlw;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdlw;->getKeySize()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdpo;->zzez(I)V

    return-void
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/ads/zzdte;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdlw;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdlv;->zzatw()Lcom/google/android/gms/internal/ads/zzdlv$zza;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdlw;->getKeySize()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdpn;->zzey(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqk;->zzu([B)Lcom/google/android/gms/internal/ads/zzdqk;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdlv$zza;->zzag(Lcom/google/android/gms/internal/ads/zzdqk;)Lcom/google/android/gms/internal/ads/zzdlv$zza;

    move-result-object p1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdlv$zza;->zzeg(I)Lcom/google/android/gms/internal/ads/zzdlv$zza;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdrt$zzb;->zzbaf()Lcom/google/android/gms/internal/ads/zzdte;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdrt;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdlv;

    return-object p1
.end method

.method public final synthetic zzq(Lcom/google/android/gms/internal/ads/zzdqk;)Lcom/google/android/gms/internal/ads/zzdte;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdse;
        }
    .end annotation

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdlw;->zzaf(Lcom/google/android/gms/internal/ads/zzdqk;)Lcom/google/android/gms/internal/ads/zzdlw;

    move-result-object p1

    return-object p1
.end method
