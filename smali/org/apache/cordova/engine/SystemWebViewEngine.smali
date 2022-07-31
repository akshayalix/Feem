.class public Lorg/apache/cordova/engine/SystemWebViewEngine;
.super Ljava/lang/Object;
.source "SystemWebViewEngine.java"

# interfaces
.implements Lorg/apache/cordova/CordovaWebViewEngine;


# static fields
.field public static final TAG:Ljava/lang/String; = "SystemWebViewEngine"


# instance fields
.field protected bridge:Lorg/apache/cordova/CordovaBridge;

.field protected client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

.field protected final cookieManager:Lorg/apache/cordova/engine/SystemCookieManager;

.field protected cordova:Lorg/apache/cordova/CordovaInterface;

.field protected nativeToJsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

.field protected parentWebView:Lorg/apache/cordova/CordovaWebView;

.field protected pluginManager:Lorg/apache/cordova/PluginManager;

.field protected preferences:Lorg/apache/cordova/CordovaPreferences;

.field private receiver:Landroid/content/BroadcastReceiver;

.field protected resourceApi:Lorg/apache/cordova/CordovaResourceApi;

.field protected final webView:Lorg/apache/cordova/engine/SystemWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/apache/cordova/CordovaPreferences;)V
    .locals 1

    .line 75
    new-instance v0, Lorg/apache/cordova/engine/SystemWebView;

    invoke-direct {v0, p1}, Lorg/apache/cordova/engine/SystemWebView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/cordova/engine/SystemWebViewEngine;-><init>(Lorg/apache/cordova/engine/SystemWebView;Lorg/apache/cordova/CordovaPreferences;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/engine/SystemWebView;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/engine/SystemWebViewEngine;-><init>(Lorg/apache/cordova/engine/SystemWebView;Lorg/apache/cordova/CordovaPreferences;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/engine/SystemWebView;Lorg/apache/cordova/CordovaPreferences;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    .line 84
    iput-object p1, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    .line 85
    new-instance p2, Lorg/apache/cordova/engine/SystemCookieManager;

    invoke-direct {p2, p1}, Lorg/apache/cordova/engine/SystemCookieManager;-><init>(Landroid/webkit/WebView;)V

    iput-object p2, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->cookieManager:Lorg/apache/cordova/engine/SystemCookieManager;

    return-void
.end method

.method private enableRemoteDebugging()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const/4 v0, 0x1

    .line 243
    :try_start_0
    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SystemWebViewEngine"

    const-string v2, "You have one job! To turn on Remote Web Debugging! YOU HAVE FAILED! "

    .line 245
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static exposeJsInterface(Landroid/webkit/WebView;Lorg/apache/cordova/CordovaBridge;)V
    .locals 2

    .line 251
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    const-string p0, "SystemWebViewEngine"

    const-string p1, "Disabled addJavascriptInterface() bridge since Android version is old."

    .line 252
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 258
    :cond_0
    new-instance v0, Lorg/apache/cordova/engine/SystemExposedJsApi;

    invoke-direct {v0, p1}, Lorg/apache/cordova/engine/SystemExposedJsApi;-><init>(Lorg/apache/cordova/CordovaBridge;)V

    const-string p1, "_cordovaNative"

    .line 259
    invoke-virtual {p0, v0, p1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private initWebViewSettings()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const-string v0, "SystemWebViewEngine"

    .line 141
    iget-object v1, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/cordova/engine/SystemWebView;->setInitialScale(I)V

    .line 142
    iget-object v1, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v1, v2}, Lorg/apache/cordova/engine/SystemWebView;->setVerticalScrollBarEnabled(Z)V

    .line 144
    iget-object v1, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v1}, Lorg/apache/cordova/engine/SystemWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v3, 0x1

    .line 145
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 146
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 147
    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 151
    :try_start_0
    const-class v4, Landroid/webkit/WebSettings;

    const-string v5, "setNavDump"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 153
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 154
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CordovaWebView is running on device made by: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-ge v5, v6, :cond_0

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v6, "HTC"

    .line 156
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 158
    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v4, "This should never happen: InvocationTargetException means this isn\'t Android anymore."

    .line 167
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string v4, "This should never happen: IllegalAccessException means this isn\'t Android anymore"

    .line 165
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    const-string v4, "Doing the NavDump failed with bad arguments"

    .line 163
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    const-string v4, "We are on a modern version of Android, we will deprecate HTC 2.3 devices in 2.8"

    .line 161
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    :goto_0
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 172
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v0, v4, :cond_1

    .line 177
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 179
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v0, v4, :cond_2

    .line 180
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 184
    :cond_2
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/engine/SystemWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "database"

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 186
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v2}, Lorg/apache/cordova/engine/SystemWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 191
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v2, v4, :cond_3

    .line 193
    invoke-direct {p0}, Lorg/apache/cordova/engine/SystemWebViewEngine;->enableRemoteDebugging()V

    .line 196
    :cond_3
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 202
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    const-wide/32 v4, 0x500000

    .line 206
    invoke-virtual {v1, v4, v5}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 207
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 212
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 215
    iget-object v2, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const/4 v3, 0x0

    const-string v4, "OverrideUserAgent"

    invoke-virtual {v2, v4, v3}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 217
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_1

    .line 219
    :cond_4
    iget-object v2, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v4, "AppendUserAgent"

    invoke-virtual {v2, v4, v3}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 226
    :cond_5
    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    .line 227
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    iget-object v2, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_6

    .line 229
    new-instance v2, Lorg/apache/cordova/engine/SystemWebViewEngine$2;

    invoke-direct {v2, p0, v1}, Lorg/apache/cordova/engine/SystemWebViewEngine$2;-><init>(Lorg/apache/cordova/engine/SystemWebViewEngine;Landroid/webkit/WebSettings;)V

    iput-object v2, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->receiver:Landroid/content/BroadcastReceiver;

    .line 235
    iget-object v1, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v1}, Lorg/apache/cordova/engine/SystemWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_6
    return-void
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/engine/SystemWebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public clearCache()V
    .locals 2

    .line 283
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/engine/SystemWebView;->clearCache(Z)V

    return-void
.end method

.method public clearHistory()V
    .locals 1

    .line 288
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/engine/SystemWebView;->clearHistory()V

    return-void
.end method

.method public destroy()V
    .locals 3

    .line 323
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    iget-object v0, v0, Lorg/apache/cordova/engine/SystemWebView;->chromeClient:Lorg/apache/cordova/engine/SystemWebChromeClient;

    invoke-virtual {v0}, Lorg/apache/cordova/engine/SystemWebChromeClient;->destroyLastDialog()V

    .line 324
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/engine/SystemWebView;->destroy()V

    .line 326
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 328
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/engine/SystemWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error unregistering configuration receiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemWebViewEngine"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getCookieManager()Lorg/apache/cordova/ICordovaCookieManager;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->cookieManager:Lorg/apache/cordova/engine/SystemCookieManager;

    return-object v0
.end method

.method public getCordovaWebView()Lorg/apache/cordova/CordovaWebView;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->parentWebView:Lorg/apache/cordova/CordovaWebView;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/engine/SystemWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    return-object v0
.end method

.method public goBack()Z
    .locals 1

    .line 305
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/engine/SystemWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/engine/SystemWebView;->goBack()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebViewEngine$Client;Lorg/apache/cordova/CordovaResourceApi;Lorg/apache/cordova/PluginManager;Lorg/apache/cordova/NativeToJsMessageQueue;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    if-nez v0, :cond_0

    .line 97
    invoke-interface {p1}, Lorg/apache/cordova/CordovaWebView;->getPreferences()Lorg/apache/cordova/CordovaPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    .line 99
    :cond_0
    iput-object p1, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->parentWebView:Lorg/apache/cordova/CordovaWebView;

    .line 100
    iput-object p2, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 101
    iput-object p3, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

    .line 102
    iput-object p4, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    .line 103
    iput-object p5, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->pluginManager:Lorg/apache/cordova/PluginManager;

    .line 104
    iput-object p6, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->nativeToJsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    .line 105
    iget-object p1, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {p1, p0, p2}, Lorg/apache/cordova/engine/SystemWebView;->init(Lorg/apache/cordova/engine/SystemWebViewEngine;Lorg/apache/cordova/CordovaInterface;)V

    .line 107
    invoke-direct {p0}, Lorg/apache/cordova/engine/SystemWebViewEngine;->initWebViewSettings()V

    .line 109
    new-instance p1, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;

    new-instance p2, Lorg/apache/cordova/engine/SystemWebViewEngine$1;

    invoke-direct {p2, p0}, Lorg/apache/cordova/engine/SystemWebViewEngine$1;-><init>(Lorg/apache/cordova/engine/SystemWebViewEngine;)V

    invoke-direct {p1, p2}, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;-><init>(Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode$OnlineEventsBridgeModeDelegate;)V

    invoke-virtual {p6, p1}, Lorg/apache/cordova/NativeToJsMessageQueue;->addBridgeMode(Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;)V

    .line 119
    new-instance p1, Lorg/apache/cordova/CordovaBridge;

    invoke-direct {p1, p5, p6}, Lorg/apache/cordova/CordovaBridge;-><init>(Lorg/apache/cordova/PluginManager;Lorg/apache/cordova/NativeToJsMessageQueue;)V

    iput-object p1, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->bridge:Lorg/apache/cordova/CordovaBridge;

    .line 120
    iget-object p1, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    iget-object p2, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->bridge:Lorg/apache/cordova/CordovaBridge;

    invoke-static {p1, p2}, Lorg/apache/cordova/engine/SystemWebViewEngine;->exposeJsInterface(Landroid/webkit/WebView;Lorg/apache/cordova/CordovaBridge;)V

    return-void

    .line 93
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public loadUrl(Ljava/lang/String;Z)V
    .locals 0

    .line 268
    iget-object p2, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {p2, p1}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setPaused(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 315
    iget-object p1, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {p1}, Lorg/apache/cordova/engine/SystemWebView;->pauseTimers()V

    goto :goto_0

    .line 317
    :cond_0
    iget-object p1, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {p1}, Lorg/apache/cordova/engine/SystemWebView;->resumeTimers()V

    :goto_0
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .line 278
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/engine/SystemWebView;->stopLoading()V

    return-void
.end method
