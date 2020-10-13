.class Lcom/tencent/open/c$a;
.super Landroid/webkit/WebViewClient;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/c;


# direct methods
.method private constructor <init>(Lcom/tencent/open/c;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/tencent/open/c$a;->a:Lcom/tencent/open/c;

    move-object v2, v0

    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/open/c;Lcom/tencent/open/c$1;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/tencent/open/c$a;-><init>(Lcom/tencent/open/c;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/c$a;->a:Lcom/tencent/open/c;

    invoke-static {v3}, Lcom/tencent/open/c;->c(Lcom/tencent/open/c;)Lcom/tencent/open/c/b;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/tencent/open/c/b;->setVisibility(I)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const-string v4, "openSDK_LOG.PKDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Webview loading URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/open/c$a;->a:Lcom/tencent/open/c;

    invoke-static {v5}, Lcom/tencent/open/c;->b(Lcom/tencent/open/c;)Lcom/tencent/open/c$c;

    move-result-object v5

    new-instance v6, Lcom/tencent/tauth/UiError;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-direct {v7, v8, v9, v10}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/tencent/open/c$c;->onError(Lcom/tencent/tauth/UiError;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/open/c$a;->a:Lcom/tencent/open/c;

    invoke-static {v5}, Lcom/tencent/open/c;->a(Lcom/tencent/open/c;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/open/c$a;->a:Lcom/tencent/open/c;

    invoke-static {v5}, Lcom/tencent/open/c;->a(Lcom/tencent/open/c;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/open/c$a;->a:Lcom/tencent/open/c;

    invoke-static {v5}, Lcom/tencent/open/c;->a(Lcom/tencent/open/c;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    const-string v6, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\u6216\u7cfb\u7edf\u9519\u8bef"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/open/c$a;->a:Lcom/tencent/open/c;

    invoke-virtual {v5}, Lcom/tencent/open/c;->dismiss()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string v3, "openSDK_LOG.PKDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Redirect URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    invoke-static {}, Lcom/tencent/open/utils/g;->a()Lcom/tencent/open/utils/g;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/open/c$a;->a:Lcom/tencent/open/c;

    invoke-static {v5}, Lcom/tencent/open/c;->a(Lcom/tencent/open/c;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    const-string v6, "auth://tauth.qq.com/"

    invoke-virtual {v4, v5, v6}, Lcom/tencent/open/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/c$a;->a:Lcom/tencent/open/c;

    invoke-static {v3}, Lcom/tencent/open/c;->b(Lcom/tencent/open/c;)Lcom/tencent/open/c$c;

    move-result-object v3

    move-object v4, v2

    invoke-static {v4}, Lcom/tencent/open/utils/k;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/open/c$c;->onComplete(Ljava/lang/Object;)V

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/c$a;->a:Lcom/tencent/open/c;

    invoke-virtual {v3}, Lcom/tencent/open/c;->dismiss()V

    const/4 v3, 0x1

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move-object v3, v2

    const-string v4, "auth://cancel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/c$a;->a:Lcom/tencent/open/c;

    invoke-static {v3}, Lcom/tencent/open/c;->b(Lcom/tencent/open/c;)Lcom/tencent/open/c$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/open/c$c;->onCancel()V

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/c$a;->a:Lcom/tencent/open/c;

    invoke-virtual {v3}, Lcom/tencent/open/c;->dismiss()V

    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    const-string v4, "auth://close"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/c$a;->a:Lcom/tencent/open/c;

    invoke-virtual {v3}, Lcom/tencent/open/c;->dismiss()V

    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method
