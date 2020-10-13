.class final Lcom/branch/www/screencapture/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/branch/www/screencapture/b;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/branch/www/screencapture/b;->f()Lcom/androlua/LuaAccessibilityService;

    move-result-object v0

    invoke-static {}, Lcom/branch/www/screencapture/b;->g()Lcom/branch/www/screencapture/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/branch/www/screencapture/b;->a(Lcom/androlua/LuaAccessibilityService;Lcom/branch/www/screencapture/a;)V

    return-void
.end method
