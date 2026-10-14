.class public Lcn/mucang/android/core/utils/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J

.field private static b:I

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/core/utils/v0;->c:Ljava/util/Map;

    return-void
.end method

.method public static a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/core/utils/v0;->c:Ljava/util/Map;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    sget-wide v2, Lcn/mucang/android/core/utils/v0;->a:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const/4 v2, 0x0

    .line 3
    sput v2, Lcn/mucang/android/core/utils/v0;->b:I

    .line 4
    :cond_0
    sget v2, Lcn/mucang/android/core/utils/v0;->b:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcn/mucang/android/core/utils/v0;->b:I

    .line 5
    sput-wide v0, Lcn/mucang/android/core/utils/v0;->a:J

    const/16 v0, 0xa

    if-lt v2, v0, :cond_1

    .line 6
    invoke-static {p0}, Lcn/mucang/android/core/utils/v0;->c(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/app/Dialog;

    sget v1, Lcn/mucang/android/framework/core/R$style;->core__dialog:I

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3
    sget v1, Lcn/mucang/android/framework/core/R$layout;->core__your_utils_dialog:I

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 4
    sget v1, Lcn/mucang/android/framework/core/R$id;->password:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 5
    sget v2, Lcn/mucang/android/framework/core/R$id;->btn_ok:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 6
    new-instance v3, Lcn/mucang/android/core/utils/v0$a;

    invoke-direct {v3, v1, v0}, Lcn/mucang/android/core/utils/v0$a;-><init>(Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
