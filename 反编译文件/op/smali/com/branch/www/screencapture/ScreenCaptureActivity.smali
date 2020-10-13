.class public Lcom/branch/www/screencapture/ScreenCaptureActivity;
.super Landroid/app/Activity;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const-string v0, "\u4ec5\u652f\u6301\u5b89\u53535\u4ee5\u4e0a\u7cfb\u7edf"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/branch/www/screencapture/ScreenCaptureActivity;->a:Landroid/widget/TextView;

    const-string v1, "\u4ec5\u652f\u6301\u5b89\u53535\u4ee5\u4e0a\u7cfb\u7edf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v0, "media_projection"

    invoke-virtual {p0, v0}, Lcom/branch/www/screencapture/ScreenCaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/branch/www/screencapture/ScreenCaptureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public finish()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/branch/www/screencapture/ScreenCaptureActivity;->finishAndRemoveTask()V

    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    invoke-static {p3}, Lcom/branch/www/screencapture/b;->a(Landroid/content/Intent;)V

    const-string p1, "\u83b7\u5f97\u6743\u9650\u6210\u529f"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/branch/www/screencapture/ScreenCaptureActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/branch/www/screencapture/ScreenCaptureActivity;->a:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/branch/www/screencapture/ScreenCaptureActivity;->a:Landroid/widget/TextView;

    const-string v0, "\u8bf7\u6388\u4e88\u6743\u9650"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/branch/www/screencapture/ScreenCaptureActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/branch/www/screencapture/ScreenCaptureActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/branch/www/screencapture/ScreenCaptureActivity;->a()V

    return-void
.end method
