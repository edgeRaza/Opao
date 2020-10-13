.class Landroid/support/transition/SceneStaticsIcs;
.super Landroid/support/transition/SceneStaticsImpl;
.source "SceneStaticsIcs.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/transition/SceneStaticsImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/support/transition/SceneImpl;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Landroid/support/transition/SceneIcs;

    invoke-direct {v0}, Landroid/support/transition/SceneIcs;-><init>()V

    .line 31
    invoke-static {p1, p2, p3}, Landroid/support/transition/ScenePort;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/support/transition/ScenePort;

    move-result-object v1

    iput-object v1, v0, Landroid/support/transition/SceneIcs;->mScene:Landroid/support/transition/ScenePort;

    .line 32
    return-object v0
.end method
