.class public final Lcom/google/android/gms/internal/ads/zzdoy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T_WRAPPER::",
        "Lcom/google/android/gms/internal/ads/zzdpb<",
        "TT_ENGINE;>;T_ENGINE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final zzhgf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzhgg:Lcom/google/android/gms/internal/ads/zzdoy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdoy<",
            "Lcom/google/android/gms/internal/ads/zzdpa;",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzhgh:Lcom/google/android/gms/internal/ads/zzdoy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdoy<",
            "Lcom/google/android/gms/internal/ads/zzdpe;",
            "Ljavax/crypto/Mac;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhgi:Lcom/google/android/gms/internal/ads/zzdoy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdoy<",
            "Lcom/google/android/gms/internal/ads/zzdpg;",
            "Ljava/security/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhgj:Lcom/google/android/gms/internal/ads/zzdoy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdoy<",
            "Lcom/google/android/gms/internal/ads/zzdph;",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzhgk:Lcom/google/android/gms/internal/ads/zzdoy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdoy<",
            "Lcom/google/android/gms/internal/ads/zzdpd;",
            "Ljavax/crypto/KeyAgreement;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzhgl:Lcom/google/android/gms/internal/ads/zzdoy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdoy<",
            "Lcom/google/android/gms/internal/ads/zzdpf;",
            "Ljava/security/KeyPairGenerator;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzhgm:Lcom/google/android/gms/internal/ads/zzdoy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdoy<",
            "Lcom/google/android/gms/internal/ads/zzdpc;",
            "Ljava/security/KeyFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzhgn:Lcom/google/android/gms/internal/ads/zzdpb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_WRAPPER;"
        }
    .end annotation
.end field

.field private zzhgo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private zzhgp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 16
    const-class v0, Lcom/google/android/gms/internal/ads/zzdoy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdoy;->logger:Ljava/util/logging/Logger;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdpp;->zzaxh()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 18
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "GmsCore_OpenSSL"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "AndroidOpenSSL"

    aput-object v4, v1, v3

    .line 20
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    .line 21
    aget-object v6, v1, v5

    .line 22
    invoke-static {v6}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 24
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 25
    :cond_0
    sget-object v7, Lcom/google/android/gms/internal/ads/zzdoy;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v6, v9, v2

    const-string v6, "Provider %s not available"

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "com.google.crypto.tink.subtle.EngineFactory"

    const-string v10, "toProviderList"

    invoke-virtual {v7, v8, v9, v10, v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 28
    :cond_1
    sput-object v4, Lcom/google/android/gms/internal/ads/zzdoy;->zzhgf:Ljava/util/List;

    goto :goto_2

    .line 29
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdoy;->zzhgf:Ljava/util/List;

    .line 30
    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdoy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdpa;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdpa;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdoy;-><init>(Lcom/google/android/gms/internal/ads/zzdpb;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdoy;->zzhgg:Lcom/google/android/gms/internal/ads/zzdoy;

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdoy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdpe;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdpe;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdoy;-><init>(Lcom/google/android/gms/internal/ads/zzdpb;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdoy;->zzhgh:Lcom/google/android/gms/internal/ads/zzdoy;

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdoy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdpg;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdoy;-><init>(Lcom/google/android/gms/internal/ads/zzdpb;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdoy;->zzhgi:Lcom/google/android/gms/internal/ads/zzdoy;

    .line 33
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdoy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdph;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdph;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdoy;-><init>(Lcom/google/android/gms/internal/ads/zzdpb;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdoy;->zzhgj:Lcom/google/android/gms/internal/ads/zzdoy;

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdoy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdpd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdpd;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdoy;-><init>(Lcom/google/android/gms/internal/ads/zzdpb;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdoy;->zzhgk:Lcom/google/android/gms/internal/ads/zzdoy;

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdoy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdpf;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdpf;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdoy;-><init>(Lcom/google/android/gms/internal/ads/zzdpb;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdoy;->zzhgl:Lcom/google/android/gms/internal/ads/zzdoy;

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdoy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdpc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdpc;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdoy;-><init>(Lcom/google/android/gms/internal/ads/zzdpb;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdoy;->zzhgm:Lcom/google/android/gms/internal/ads/zzdoy;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdpb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_WRAPPER;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoy;->zzhgn:Lcom/google/android/gms/internal/ads/zzdpb;

    .line 3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdoy;->zzhgf:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoy;->zzhgo:Ljava/util/List;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdoy;->zzhgp:Z

    return-void
.end method


# virtual methods
.method public final zzhd(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT_ENGINE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoy;->zzhgo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider;

    .line 8
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdoy;->zzhgn:Lcom/google/android/gms/internal/ads/zzdpb;

    invoke-interface {v4, p1, v3}, Lcom/google/android/gms/internal/ads/zzdpb;->zza(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v3

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    .line 13
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdoy;->zzhgp:Z

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoy;->zzhgn:Lcom/google/android/gms/internal/ads/zzdpb;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdpb;->zza(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "No good Provider found."

    invoke-direct {p1, v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    return-void
.end method
