.class public final Lcom/google/android/gms/internal/ads/zzckl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcir;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcir<",
        "Lcom/google/android/gms/internal/ads/zzbtu;",
        "Lcom/google/android/gms/internal/ads/zzani;",
        "Lcom/google/android/gms/internal/ads/zzcjy;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfyt:Lcom/google/android/gms/internal/ads/zzbup;

.field private final zzup:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckl;->zzup:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzckl;->zzfyt:Lcom/google/android/gms/internal/ads/zzbup;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzczt;Lcom/google/android/gms/internal/ads/zzczl;Lcom/google/android/gms/internal/ads/zzcip;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzczt;",
            "Lcom/google/android/gms/internal/ads/zzczl;",
            "Lcom/google/android/gms/internal/ads/zzcip<",
            "Lcom/google/android/gms/internal/ads/zzani;",
            "Lcom/google/android/gms/internal/ads/zzcjy;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdab;
        }
    .end annotation

    .line 5
    :try_start_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzcip;->zzddn:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzani;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzczl;->zzdem:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzani;->zzdm(Ljava/lang/String;)V

    .line 6
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzcip;->zzddn:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzani;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzczl;->zzeif:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzczl;->zzglr:Lorg/json/JSONObject;

    .line 7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzczt;->zzgmh:Lcom/google/android/gms/internal/ads/zzczo;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzczo;->zzfgl:Lcom/google/android/gms/internal/ads/zzczu;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzczu;->zzgml:Lcom/google/android/gms/internal/ads/zzug;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzckl;->zzup:Landroid/content/Context;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzckq;

    const/4 p1, 0x0

    invoke-direct {v6, p0, p3, p1}, Lcom/google/android/gms/internal/ads/zzckq;-><init>(Lcom/google/android/gms/internal/ads/zzckl;Lcom/google/android/gms/internal/ads/zzcip;Lcom/google/android/gms/internal/ads/zzckn;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzcip;->zzfyf:Lcom/google/android/gms/internal/ads/zzbpu;

    move-object v7, p1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzali;

    .line 9
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzani;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzug;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzamx;Lcom/google/android/gms/internal/ads/zzali;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 12
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdab;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdab;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzczt;Lcom/google/android/gms/internal/ads/zzczl;Lcom/google/android/gms/internal/ads/zzcip;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdab;,
            Lcom/google/android/gms/internal/ads/zzclr;
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzciq;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzciq;-><init>(Lcom/google/android/gms/internal/ads/zzczl;)V

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzckl;->zzfyt:Lcom/google/android/gms/internal/ads/zzbup;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbmt;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/zzcip;->zzfge:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzbmt;-><init>(Lcom/google/android/gms/internal/ads/zzczt;Lcom/google/android/gms/internal/ads/zzczl;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbtv;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcko;

    invoke-direct {p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzcko;-><init>(Lcom/google/android/gms/internal/ads/zzcip;Lcom/google/android/gms/internal/ads/zzciq;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbtv;-><init>(Lcom/google/android/gms/internal/ads/zzbuv;)V

    .line 16
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzbup;->zza(Lcom/google/android/gms/internal/ads/zzbmt;Lcom/google/android/gms/internal/ads/zzbtv;)Lcom/google/android/gms/internal/ads/zzbtw;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbmf;->zzadk()Lcom/google/android/gms/internal/ads/zzbpd;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzciq;->zza(Lcom/google/android/gms/internal/ads/zzbpd;)V

    .line 18
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzcip;->zzfyf:Lcom/google/android/gms/internal/ads/zzbpu;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcjy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbmf;->zzadm()Lcom/google/android/gms/internal/ads/zzcnd;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzcjy;->zza(Lcom/google/android/gms/internal/ads/zzali;)V

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbtw;->zzaem()Lcom/google/android/gms/internal/ads/zzbtu;

    move-result-object p1

    return-object p1
.end method
