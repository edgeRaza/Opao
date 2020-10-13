.class Lcom/tencent/connect/auth/AuthAgent$b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/auth/AuthAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/connect/auth/AuthAgent$b$a;
    }
.end annotation


# instance fields
.field a:Lcom/tencent/tauth/IUiListener;

.field final synthetic b:Lcom/tencent/connect/auth/AuthAgent;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/connect/auth/AuthAgent;Lcom/tencent/tauth/IUiListener;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/tencent/connect/auth/AuthAgent$b;->b:Lcom/tencent/connect/auth/AuthAgent;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    const-string v4, "sendinstall"

    iput-object v4, v3, Lcom/tencent/connect/auth/AuthAgent$b;->c:Ljava/lang/String;

    move-object v3, v0

    const-string v4, "installwording"

    iput-object v4, v3, Lcom/tencent/connect/auth/AuthAgent$b;->d:Ljava/lang/String;

    move-object v3, v0

    const-string v4, "http://appsupport.qq.com/cgi-bin/qzapps/mapp_addapp.cgi"

    iput-object v4, v3, Lcom/tencent/connect/auth/AuthAgent$b;->e:Ljava/lang/String;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/tencent/connect/auth/AuthAgent$b;->a:Lcom/tencent/tauth/IUiListener;

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v10, v2

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    move-object v2, v10

    move-object v10, v2

    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    move-object v3, v10

    const/4 v10, 0x0

    move-object v4, v10

    move-object v10, v3

    move-object v11, v1

    :try_start_0
    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    move-object v5, v10

    move-object v10, v5

    if-nez v10, :cond_0

    const/4 v10, 0x0

    move-object v0, v10

    :goto_0
    return-object v0

    :cond_0
    move-object v10, v1

    const-string v11, ".9.png"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x0

    move-object v6, v10

    move-object v10, v5

    :try_start_1
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    move-object v6, v10

    :goto_1
    move-object v10, v6

    if-eqz v10, :cond_1

    move-object v10, v6

    :try_start_2
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v10

    move-object v7, v10

    move-object v10, v7

    invoke-static {v10}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v10

    move v8, v10

    new-instance v10, Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v6

    move-object v13, v7

    new-instance v14, Landroid/graphics/Rect;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    move-object v9, v10

    move-object v10, v9

    move-object v4, v10

    :goto_2
    move-object v10, v4

    move-object v0, v10

    goto :goto_0

    :catch_0
    move-exception v10

    move-object v7, v10

    move-object v10, v7

    invoke-virtual {v10}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v10

    move-object v5, v10

    move-object v10, v5

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0

    :cond_2
    move-object v10, v5

    move-object v11, v1

    :try_start_3
    invoke-static {v10, v11}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object v4, v10

    move-object v10, v5

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 43

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    new-instance v36, Landroid/util/DisplayMetrics;

    move-object/from16 v42, v36

    move-object/from16 v36, v42

    move-object/from16 v37, v42

    invoke-direct/range {v37 .. v37}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v8, v36

    move-object/from16 v36, v3

    const-string v37, "window"

    invoke-virtual/range {v36 .. v37}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/view/WindowManager;

    move-object/from16 v9, v36

    move-object/from16 v36, v9

    invoke-interface/range {v36 .. v36}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v36

    move-object/from16 v37, v8

    invoke-virtual/range {v36 .. v37}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    move-object/from16 v36, v8

    move-object/from16 v0, v36

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v36, v0

    move/from16 v10, v36

    new-instance v36, Landroid/widget/RelativeLayout;

    move-object/from16 v42, v36

    move-object/from16 v36, v42

    move-object/from16 v37, v42

    move-object/from16 v38, v3

    invoke-direct/range {v37 .. v38}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v11, v36

    new-instance v36, Landroid/widget/ImageView;

    move-object/from16 v42, v36

    move-object/from16 v36, v42

    move-object/from16 v37, v42

    move-object/from16 v38, v3

    invoke-direct/range {v37 .. v38}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v12, v36

    move-object/from16 v36, v12

    move-object/from16 v37, v4

    invoke-virtual/range {v36 .. v37}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v36, v12

    sget-object v37, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v36 .. v37}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move-object/from16 v36, v12

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Landroid/widget/ImageView;->setId(I)V

    const/high16 v36, 0x42700000    # 60.0f

    move/from16 v37, v10

    mul-float v36, v36, v37

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    move/from16 v13, v36

    const/high16 v36, 0x42700000    # 60.0f

    move/from16 v37, v10

    mul-float v36, v36, v37

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    move/from16 v14, v36

    const/high16 v36, 0x41600000    # 14.0f

    move/from16 v37, v10

    mul-float v36, v36, v37

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    move/from16 v15, v36

    const/high16 v36, 0x41900000    # 18.0f

    move/from16 v37, v10

    mul-float v36, v36, v37

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    move/from16 v16, v36

    const/high16 v36, 0x40c00000    # 6.0f

    move/from16 v37, v10

    mul-float v36, v36, v37

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    move/from16 v17, v36

    const/high16 v36, 0x41900000    # 18.0f

    move/from16 v37, v10

    mul-float v36, v36, v37

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    move/from16 v18, v36

    new-instance v36, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v42, v36

    move-object/from16 v36, v42

    move-object/from16 v37, v42

    move/from16 v38, v13

    move/from16 v39, v14

    invoke-direct/range {v37 .. v39}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v19, v36

    move-object/from16 v36, v19

    const/16 v37, 0x9

    invoke-virtual/range {v36 .. v37}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v36, v19

    const/16 v37, 0x0

    move/from16 v38, v16

    move/from16 v39, v17

    move/from16 v40, v18

    invoke-virtual/range {v36 .. v40}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    move-object/from16 v36, v11

    move-object/from16 v37, v12

    move-object/from16 v38, v19

    invoke-virtual/range {v36 .. v38}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v36, Landroid/widget/TextView;

    move-object/from16 v42, v36

    move-object/from16 v36, v42

    move-object/from16 v37, v42

    move-object/from16 v38, v3

    invoke-direct/range {v37 .. v38}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v20, v36

    move-object/from16 v36, v20

    move-object/from16 v37, v5

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v36, v20

    const/high16 v37, 0x41600000    # 14.0f

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setTextSize(F)V

    move-object/from16 v36, v20

    const/16 v37, 0x3

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v36, v20

    const/16 v37, 0x0

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    move-object/from16 v36, v20

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    invoke-virtual/range {v36 .. v40}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v36, v20

    const/16 v37, 0x2

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setLines(I)V

    move-object/from16 v36, v20

    const/16 v37, 0x5

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setId(I)V

    move-object/from16 v36, v20

    const/high16 v37, 0x43390000    # 185.0f

    move/from16 v38, v10

    mul-float v37, v37, v38

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setMinWidth(I)V

    new-instance v36, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v42, v36

    move-object/from16 v36, v42

    move-object/from16 v37, v42

    const/16 v38, -0x2

    const/16 v39, -0x2

    invoke-direct/range {v37 .. v39}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v21, v36

    move-object/from16 v36, v21

    const/16 v37, 0x1

    const/16 v38, 0x1

    invoke-virtual/range {v36 .. v38}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object/from16 v36, v21

    const/16 v37, 0x6

    const/16 v38, 0x1

    invoke-virtual/range {v36 .. v38}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v36, 0x41200000    # 10.0f

    move/from16 v37, v10

    mul-float v36, v36, v37

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    move/from16 v17, v36

    move-object/from16 v36, v21

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/high16 v39, 0x40a00000    # 5.0f

    move/from16 v40, v10

    mul-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    const/16 v40, 0x0

    invoke-virtual/range {v36 .. v40}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    move-object/from16 v36, v11

    move-object/from16 v37, v20

    move-object/from16 v38, v21

    invoke-virtual/range {v36 .. v38}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v36, Landroid/view/View;

    move-object/from16 v42, v36

    move-object/from16 v36, v42

    move-object/from16 v37, v42

    move-object/from16 v38, v3

    invoke-direct/range {v37 .. v38}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v22, v36

    move-object/from16 v36, v22

    const/16 v37, 0xd6

    const/16 v38, 0xd6

    const/16 v39, 0xd6

    invoke-static/range {v37 .. v39}, Landroid/graphics/Color;->rgb(III)I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Landroid/view/View;->setBackgroundColor(I)V

    move-object/from16 v36, v22

    const/16 v37, 0x3

    invoke-virtual/range {v36 .. v37}, Landroid/view/View;->setId(I)V

    new-instance v36, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v42, v36

    move-object/from16 v36, v42

    move-object/from16 v37, v42

    const/16 v38, -0x2

    const/16 v39, 0x2

    invoke-direct/range {v37 .. v39}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v23, v36

    move-object/from16 v36, v23

    const/16 v37, 0x3

    const/16 v38, 0x1

    invoke-virtual/range {v36 .. v38}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v36, 0x0

    move/from16 v16, v36

    move-object/from16 v36, v23

    const/16 v37, 0x5

    const/16 v38, 0x1

    invoke-virtual/range {v36 .. v38}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object/from16 v36, v23

    const/16 v37, 0x7

    const/16 v38, 0x5

    invoke-virtual/range {v36 .. v38}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object/from16 v36, v23

    const/16 v37, 0x0

    const/16 v38, 0x0

    move/from16 v39, v16

    const/high16 v40, 0x41400000    # 12.0f

    move/from16 v41, v10

    mul-float v40, v40, v41

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v40, v0

    invoke-virtual/range {v36 .. v40}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    move-object/from16 v36, v11

    move-object/from16 v37, v22

    move-object/from16 v38, v23

    invoke-virtual/range {v36 .. v38}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v36, Landroid/widget/LinearLayout;

    move-object/from16 v42, v36

    move-object/from16 v36, v42

    move-object/from16 v37, v42

    move-object/from16 v38, v3

    invoke-direct/range {v37 .. v38}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v24, v36

    new-instance v36, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v42, v36

    move-object/from16 v36, v42

    move-object/from16 v37, v42

    const/16 v38, -0x2

    const/16 v39, -0x2

    invoke-direct/range {v37 .. v39}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v25, v36

    move-object/from16 v36, v25

    const/16 v37, 0x5

    const/16 v38, 0x1

    invoke-virtual/range {v36 .. v38}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object/from16 v36, v25

    const/16 v37, 0x7

    const/16 v38, 0x5

    invoke-virtual/range {v36 .. v38}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object/from16 v36, v25

    const/16 v37, 0x3

    const/16 v38, 0x3

    invoke-virtual/range {v36 .. v38}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v36, Landroid/widget/Button;

    move-object/from16 v42, v36

    move-object/from16 v36, v42

    move-object/from16 v37, v42

    move-object/from16 v38, v3

    invoke-direct/range {v37 .. v38}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v26, v36

    move-object/from16 v36, v26

    const-string v37, "\u8df3\u8fc7"

    invoke-virtual/range {v36 .. v37}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v36, v2

    const-string v37, "buttonNegt.png"

    move-object/from16 v38, v3

    invoke-direct/range {v36 .. v38}, Lcom/tencent/connect/auth/AuthAgent$b;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v36

    move-object/from16 v27, v36

    move-object/from16 v36, v26

    move-object/from16 v37, v27

    invoke-virtual/range {v36 .. v37}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v36, v26

    const/16 v37, 0x24

    const/16 v38, 0x61

    const/16 v39, 0x83

    invoke-static/range {v37 .. v39}, Landroid/graphics/Color;->rgb(III)I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/Button;->setTextColor(I)V

    move-object/from16 v36, v26

    const/high16 v37, 0x41a00000    # 20.0f

    invoke-virtual/range {v36 .. v37}, Landroid/widget/Button;->setTextSize(F)V

    move-object/from16 v36, v26

    move-object/from16 v37, v7

    invoke-virtual/range {v36 .. v37}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v36, v26

    const/16 v37, 0x4

    invoke-virtual/range {v36 .. v37}, Landroid/widget/Button;->setId(I)V

    new-instance v36, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v42, v36

    move-object/from16 v36, v42

    move-object/from16 v37, v42

    const/16 v38, 0x0

    const/high16 v39, 0x42340000    # 45.0f

    move/from16 v40, v10

    mul-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    invoke-direct/range {v37 .. v39}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v28, v36

    move-object/from16 v36, v28

    const/high16 v37, 0x41600000    # 14.0f

    move/from16 v38, v10

    mul-float v37, v37, v38

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move-object/from16 v36, v28

    const/high16 v37, 0x40800000    # 4.0f

    move/from16 v38, v10

    mul-float v37, v37, v38

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v36, v28

    const/high16 v37, 0x3f800000    # 1.0f

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move-object/from16 v36, v24

    move-object/from16 v37, v26

    move-object/from16 v38, v28

    invoke-virtual/range {v36 .. v38}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v36, Landroid/widget/Button;

    move-object/from16 v42, v36

    move-object/from16 v36, v42

    move-object/from16 v37, v42

    move-object/from16 v38, v3

    invoke-direct/range {v37 .. v38}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v29, v36

    move-object/from16 v36, v29

    const-string v37, "\u786e\u5b9a"

    invoke-virtual/range {v36 .. v37}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v36, v29

    const/high16 v37, 0x41a00000    # 20.0f

    invoke-virtual/range {v36 .. v37}, Landroid/widget/Button;->setTextSize(F)V

    move-object/from16 v36, v29

    const/16 v37, 0xff

    const/16 v38, 0xff

    const/16 v39, 0xff

    invoke-static/range {v37 .. v39}, Landroid/graphics/Color;->rgb(III)I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/Button;->setTextColor(I)V

    move-object/from16 v36, v2

    const-string v37, "buttonPost.png"

    move-object/from16 v38, v3

    invoke-direct/range {v36 .. v38}, Lcom/tencent/connect/auth/AuthAgent$b;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v36

    move-object/from16 v30, v36

    move-object/from16 v36, v29

    move-object/from16 v37, v30

    invoke-virtual/range {v36 .. v37}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v36, v29

    move-object/from16 v37, v6

    invoke-virtual/range {v36 .. v37}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v36, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v42, v36

    move-object/from16 v36, v42

    move-object/from16 v37, v42

    const/16 v38, 0x0

    const/high16 v39, 0x42340000    # 45.0f

    move/from16 v40, v10

    mul-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    invoke-direct/range {v37 .. v39}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v31, v36

    move-object/from16 v36, v31

    const/high16 v37, 0x3f800000    # 1.0f

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move-object/from16 v36, v31

    const/high16 v37, 0x40800000    # 4.0f

    move/from16 v38, v10

    mul-float v37, v37, v38

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move-object/from16 v36, v24

    move-object/from16 v37, v29

    move-object/from16 v38, v31

    invoke-virtual/range {v36 .. v38}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v36, v11

    move-object/from16 v37, v24

    move-object/from16 v38, v25

    invoke-virtual/range {v36 .. v38}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v36, 0x438b8000    # 279.0f

    move/from16 v37, v10

    mul-float v36, v36, v37

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    move/from16 v32, v36

    const/high16 v36, 0x43230000    # 163.0f

    move/from16 v37, v10

    mul-float v36, v36, v37

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    move/from16 v33, v36

    new-instance v36, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v42, v36

    move-object/from16 v36, v42

    move-object/from16 v37, v42

    move/from16 v38, v32

    move/from16 v39, v33

    invoke-direct/range {v37 .. v39}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v34, v36

    move-object/from16 v36, v11

    const/high16 v37, 0x41600000    # 14.0f

    move/from16 v38, v10

    mul-float v37, v37, v38

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    const/16 v38, 0x0

    const/high16 v39, 0x41400000    # 12.0f

    move/from16 v40, v10

    mul-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    const/high16 v40, 0x41400000    # 12.0f

    move/from16 v41, v10

    mul-float v40, v40, v41

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v40, v0

    invoke-virtual/range {v36 .. v40}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    move-object/from16 v36, v11

    move-object/from16 v37, v34

    invoke-virtual/range {v36 .. v37}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v36, v11

    const/16 v37, 0xf7

    const/16 v38, 0xfb

    const/16 v39, 0xf7

    invoke-static/range {v37 .. v39}, Landroid/graphics/Color;->rgb(III)I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v36, Landroid/graphics/drawable/PaintDrawable;

    move-object/from16 v42, v36

    move-object/from16 v36, v42

    move-object/from16 v37, v42

    const/16 v38, 0xf7

    const/16 v39, 0xfb

    const/16 v40, 0xf7

    invoke-static/range {v38 .. v40}, Landroid/graphics/Color;->rgb(III)I

    move-result v38

    invoke-direct/range {v37 .. v38}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    move-object/from16 v35, v36

    move-object/from16 v36, v35

    const/high16 v37, 0x40a00000    # 5.0f

    move/from16 v38, v10

    mul-float v37, v37, v38

    invoke-virtual/range {v36 .. v37}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    move-object/from16 v36, v11

    move-object/from16 v37, v35

    invoke-virtual/range {v36 .. v37}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v36, v11

    move-object/from16 v2, v36

    return-object v2
.end method

.method private a(Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/Object;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v14, v0

    iget-object v14, v14, Lcom/tencent/connect/auth/AuthAgent$b;->b:Lcom/tencent/connect/auth/AuthAgent;

    invoke-static {v14}, Lcom/tencent/connect/auth/AuthAgent;->e(Lcom/tencent/connect/auth/AuthAgent;)Ljava/lang/ref/WeakReference;

    move-result-object v14

    if-nez v14, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v14, v0

    iget-object v14, v14, Lcom/tencent/connect/auth/AuthAgent$b;->b:Lcom/tencent/connect/auth/AuthAgent;

    invoke-static {v14}, Lcom/tencent/connect/auth/AuthAgent;->e(Lcom/tencent/connect/auth/AuthAgent;)Ljava/lang/ref/WeakReference;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/Activity;

    move-object v4, v14

    move-object v14, v4

    if-nez v14, :cond_1

    goto :goto_0

    :cond_1
    new-instance v14, Landroid/app/Dialog;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v4

    invoke-direct/range {v15 .. v16}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    move-object v5, v14

    move-object v14, v5

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    move-result v14

    move-object v14, v4

    invoke-virtual {v14}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    move-object v6, v14

    const/4 v14, 0x0

    move-object v7, v14

    const/4 v14, 0x0

    move-object v8, v14

    move-object v14, v6

    move-object v15, v4

    :try_start_0
    invoke-virtual {v15}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    move-object v7, v14

    :goto_1
    move-object v14, v7

    if-eqz v14, :cond_2

    move-object v14, v7

    iget-object v14, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v15, v6

    invoke-virtual {v14, v15}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object v8, v14

    :cond_2
    new-instance v14, Lcom/tencent/connect/auth/AuthAgent$b$1;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v0

    move-object/from16 v17, v5

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-direct/range {v15 .. v19}, Lcom/tencent/connect/auth/AuthAgent$b$1;-><init>(Lcom/tencent/connect/auth/AuthAgent$b;Landroid/app/Dialog;Lcom/tencent/tauth/IUiListener;Ljava/lang/Object;)V

    move-object v9, v14

    new-instance v14, Lcom/tencent/connect/auth/AuthAgent$b$2;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v0

    move-object/from16 v17, v5

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-direct/range {v15 .. v19}, Lcom/tencent/connect/auth/AuthAgent$b$2;-><init>(Lcom/tencent/connect/auth/AuthAgent$b;Landroid/app/Dialog;Lcom/tencent/tauth/IUiListener;Ljava/lang/Object;)V

    move-object v10, v14

    new-instance v14, Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    move-object v11, v14

    move-object v14, v11

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    move-object v14, v5

    invoke-virtual {v14}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    move-object v15, v11

    invoke-virtual {v14, v15}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v14, v0

    move-object v15, v4

    move-object/from16 v16, v8

    move-object/from16 v17, v1

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v14 .. v19}, Lcom/tencent/connect/auth/AuthAgent$b;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v14

    move-object v12, v14

    move-object v14, v5

    move-object v15, v12

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    new-instance v14, Lcom/tencent/connect/auth/AuthAgent$b$3;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-direct/range {v15 .. v18}, Lcom/tencent/connect/auth/AuthAgent$b$3;-><init>(Lcom/tencent/connect/auth/AuthAgent$b;Lcom/tencent/tauth/IUiListener;Ljava/lang/Object;)V

    move-object v13, v14

    move-object v14, v5

    move-object v15, v13

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    move-object v14, v4

    if-eqz v14, :cond_3

    move-object v14, v4

    invoke-virtual {v14}, Landroid/app/Activity;->isFinishing()Z

    move-result v14

    if-nez v14, :cond_3

    move-object v14, v5

    invoke-virtual {v14}, Landroid/app/Dialog;->show()V

    :cond_3
    goto/16 :goto_0

    :catch_0
    move-exception v14

    move-object v9, v14

    move-object v14, v9

    invoke-virtual {v14}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1
.end method


# virtual methods
.method protected a()V
    .locals 9

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/auth/AuthAgent$b;->b:Lcom/tencent/connect/auth/AuthAgent;

    invoke-static {v3}, Lcom/tencent/connect/auth/AuthAgent;->j(Lcom/tencent/connect/auth/AuthAgent;)Landroid/os/Bundle;

    move-result-object v3

    move-object v1, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/auth/AuthAgent$b;->b:Lcom/tencent/connect/auth/AuthAgent;

    invoke-static {v3}, Lcom/tencent/connect/auth/AuthAgent;->e(Lcom/tencent/connect/auth/AuthAgent;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/auth/AuthAgent$b;->b:Lcom/tencent/connect/auth/AuthAgent;

    invoke-static {v3}, Lcom/tencent/connect/auth/AuthAgent;->e(Lcom/tencent/connect/auth/AuthAgent;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/auth/AuthAgent$b;->b:Lcom/tencent/connect/auth/AuthAgent;

    invoke-static {v3}, Lcom/tencent/connect/auth/AuthAgent;->k(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;

    move-result-object v3

    move-object v4, v2

    const-string v5, "http://appsupport.qq.com/cgi-bin/qzapps/mapp_addapp.cgi"

    move-object v6, v1

    const-string v7, "POST"

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/tencent/open/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V

    :cond_1
    goto :goto_0
.end method

.method public onCancel()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/AuthAgent$b;->a:Lcom/tencent/tauth/IUiListener;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/AuthAgent$b;->a:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v1}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    if-eqz v6, :cond_3

    move-object v6, v1

    check-cast v6, Lorg/json/JSONObject;

    move-object v2, v6

    move-object v6, v2

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    move v3, v6

    const-string v6, ""

    move-object v4, v6

    move-object v6, v2

    :try_start_0
    const-string v7, "sendinstall"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v3, v6

    move-object v6, v2

    const-string v7, "installwording"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v4, v6

    :goto_1
    move-object v6, v4

    invoke-static {v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    const-string v6, "openSDK_LOG.AuthAgent"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " WORDING = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "xx"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v3

    if-eqz v6, :cond_1

    move-object v6, v4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v0

    move-object v7, v4

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/connect/auth/AuthAgent$b;->a:Lcom/tencent/tauth/IUiListener;

    move-object v9, v1

    invoke-direct {v6, v7, v8, v9}, Lcom/tencent/connect/auth/AuthAgent$b;->a(Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/Object;)V

    :goto_2
    return-void

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v5, v6

    const-string v6, "openSDK_LOG.AuthAgent"

    const-string v7, "FeedConfirmListener onComplete There is no value for sendinstall."

    invoke-static {v6, v7}, Lcom/tencent/open/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/connect/auth/AuthAgent$b;->a:Lcom/tencent/tauth/IUiListener;

    if-eqz v6, :cond_3

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/connect/auth/AuthAgent$b;->b:Lcom/tencent/connect/auth/AuthAgent;

    invoke-static {v6}, Lcom/tencent/connect/auth/AuthAgent;->h(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;

    move-result-object v6

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/connect/auth/AuthAgent$b;->b:Lcom/tencent/connect/auth/AuthAgent;

    invoke-static {v6}, Lcom/tencent/connect/auth/AuthAgent;->i(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Lcom/tencent/connect/auth/QQToken;->saveSession(Lorg/json/JSONObject;)V

    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/connect/auth/AuthAgent$b;->a:Lcom/tencent/tauth/IUiListener;

    move-object v7, v1

    invoke-interface {v6, v7}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V

    :cond_3
    goto :goto_2
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/AuthAgent$b;->a:Lcom/tencent/tauth/IUiListener;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/AuthAgent$b;->a:Lcom/tencent/tauth/IUiListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_0
    return-void
.end method
