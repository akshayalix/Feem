.class final Lcom/google/android/gms/internal/ads/zzban;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzdyo:Lcom/google/android/gms/internal/ads/zzbai;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbai;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzban;->zzdyo:Lcom/google/android/gms/internal/ads/zzbai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzban;->zzdyo:Lcom/google/android/gms/internal/ads/zzbai;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "surfaceCreated"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbai;->zza(Lcom/google/android/gms/internal/ads/zzbai;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
