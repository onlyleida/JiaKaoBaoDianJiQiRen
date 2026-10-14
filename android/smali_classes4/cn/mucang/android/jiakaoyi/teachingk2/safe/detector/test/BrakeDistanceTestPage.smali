.class public Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$b;,
        Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$c;,
        Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityBrakeDistancePageBinding;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;

.field private d:Z

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private g:Lcn/mucang/android/jiakaoyi/signal/i/a;

.field private h:D

.field private i:I

.field private j:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$b;

.field private final k:Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->b:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->d:Z

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->e:Ljava/util/List;

    .line 6
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->g:Lcn/mucang/android/jiakaoyi/signal/i/a;

    const-wide/16 v2, 0x0

    .line 8
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->h:D

    .line 9
    iput v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->i:I

    .line 10
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->j:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$b;

    .line 11
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/g;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/g;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->k:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    return-void
.end method

.method private B(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    return-void
.end method

.method private C()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->f(B)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->d:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityBrakeDistancePageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityBrakeDistancePageBinding;->brake:Landroid/widget/Button;

    const-string v1, "\u5f00\u59cb\u5239\u8f66"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u89e3\u5239"

    .line 5
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->B(Ljava/lang/String;)V

    return-void
.end method

.method private j()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "\u5f53\u524d\u6b63\u5728\u6d4b\u8bd5\u4e2d\uff0c\u4e0d\u80fd\u9000\u51fa"

    .line 2
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->B(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private k()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "\u5f53\u524d\u6b63\u5728\u5239\u8f66"

    .line 2
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->B(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->model()D

    move-result-wide v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_1

    const-string v0, "gps\u4e0d\u6b63\u786e\uff0c\u8bf7\u5148\u79fb\u52a8\u8f66\u5b50"

    .line 4
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->B(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->h:D

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_2

    const-string v0, "\u8f66\u901f\u8fc7\u5c0f\uff0c\u8bf7\u5c06\u8f66\u901f\u4fdd\u6301\u57281-10\u7801\u5de6\u53f3"

    .line 6
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->B(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->i:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const-string v0, "gps\u7c7b\u578b\u4e0d\u4e3a4\uff0c\u4e0d\u80fd\u5f00\u59cb\u6d4b\u8bd5"

    .line 8
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->B(Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->d:Z

    .line 10
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;

    .line 11
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->h:D

    iput-wide v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;->speed:D

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;->startTime:J

    .line 13
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 14
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityBrakeDistancePageBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityBrakeDistancePageBinding;->brake:Landroid/widget/Button;

    const-string v2, "\u5239\u8f66\u6d4b\u8bd5\u4e2d"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "\u4e0b\u53d1\u6d4b\u8bd5\u5239\u8f66\u6307\u4ee4"

    .line 15
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    .line 16
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->BrakeStudy:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->createBrakeModel(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;Ljava/util/List;Z)Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;B)V

    return-void
.end method

.method private l()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u786e\u5b9a\u6e05\u9664"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "obd\u901f\u5ea6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5239\u8f66\u53c2\u6570\uff1f\u6e05\u9664\u4e4b\u540e\uff0c\u5c06\u4f7f\u7528\u539f\u6765\u7684\u65f6\u95f4\u914d\u7f6e\u6765\u8bbe\u7f6e\u7535\u5b50\u56f4\u680f\u5239\u8f66\u7684\u8ddd\u79bb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;)V

    const-string v2, "\u6e05\u9664"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u4e0d\u6e05\u9664"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private m()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "\u5f53\u524d\u6b63\u5728\u5239\u8f66"

    .line 2
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->B(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    const-string v0, "\u6d4b\u8bd5\u6570\u636e\u8fc7\u5c11\uff0c\u8bf7\u81f3\u5c11\u6d4b\u8bd55\u6b21"

    .line 4
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->B(Ljava/lang/String;)V

    return-void

    :cond_1
    const-wide v0, 0x416312d000000000L    # 1.0E7

    const-wide/16 v2, 0x0

    .line 5
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;

    .line 6
    iget-wide v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;->speed:D

    cmpl-double v7, v5, v2

    if-lez v7, :cond_3

    move-wide v2, v5

    :cond_3
    cmpg-double v7, v5, v0

    if-gez v7, :cond_2

    move-wide v0, v5

    goto :goto_0

    :cond_4
    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    cmpg-double v4, v2, v0

    if-gez v4, :cond_5

    const-string v0, "\u6d4b\u8bd5\u7684\u901f\u5ea6\u8fc7\u4e8e\u96c6\u4e2d\uff0c\u8bf7\u57281-10\u7801\u4e4b\u95f4\u5404\u6d4b\u8bd5\u51e0\u6b21"

    .line 7
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->B(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5239\u8f66\u6d4b\u8bd5\u6570\u636e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    .line 9
    new-instance v0, Lorg/apache/commons/math3/fitting/WeightedObservedPoints;

    invoke-direct {v0}, Lorg/apache/commons/math3/fitting/WeightedObservedPoints;-><init>()V

    .line 10
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;

    .line 11
    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;->speed:D

    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;->distance:D

    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/apache/commons/math3/fitting/WeightedObservedPoints;->add(DD)V

    goto :goto_1

    :cond_6
    const/4 v1, 0x2

    .line 12
    invoke-static {v1}, Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;->create(I)Lorg/apache/commons/math3/fitting/PolynomialCurveFitter;

    move-result-object v2

    .line 13
    invoke-virtual {v0}, Lorg/apache/commons/math3/fitting/WeightedObservedPoints;->toList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter;->fit(Ljava/util/Collection;)[D

    move-result-object v0

    .line 14
    aget-wide v2, v0, v1

    const/4 v1, 0x1

    aget-wide v4, v0, v1

    const/4 v1, 0x0

    aget-wide v6, v0, v1

    invoke-static/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/b;->c(DDD)V

    const-string v0, "\u5b66\u4e60\u5b8c\u6210"

    .line 15
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic n(Landroid/content/DialogInterface;I)V
    .locals 6

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    .line 1
    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/b;->c(DDD)V

    const-string p1, "\u5df2\u6e05\u9664"

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->B(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic p(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->j()V

    return-void
.end method

.method private synthetic r(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->k()V

    return-void
.end method

.method private synthetic t(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->m()V

    return-void
.end method

.method private synthetic v(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->l()V

    return-void
.end method

.method private synthetic x(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->C()V

    return-void
.end method

.method private synthetic z(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    .line 2
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->h:D

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityBrakeDistancePageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityBrakeDistancePageBinding;->info:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8f66\u901f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->h:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",gps\u7c7b\u578b:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->i:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->from(Landroid/location/Location;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->g:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-nez v1, :cond_2

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/i/b;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/i/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->g:Lcn/mucang/android/jiakaoyi/signal/i/a;

    .line 8
    :cond_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->g:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeBoardBrakeState:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->STATE_BRAKE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    if-ne v1, v2, :cond_4

    .line 11
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->d:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->e:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_4

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->e:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->c(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iput-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    iput-wide v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;->distance:D

    .line 16
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;->endTime:J

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->d:Z

    .line 18
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 19
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityBrakeDistancePageBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityBrakeDistancePageBinding;->brake:Landroid/widget/Button;

    const-string v0, "\u5f00\u59cb\u5239\u8f66"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->b:Ljava/util/List;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->j:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$b;

    if-eqz p1, :cond_3

    .line 22
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$BrakeInfo;

    :cond_4
    return-void
.end method


# virtual methods
.method public synthetic A(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->z(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u5239\u8f66\u6d4b\u8bd5"

    return-object v0
.end method

.method protected init()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityBrakeDistancePageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityBrakeDistancePageBinding;->back:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/f;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->k:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityBrakeDistancePageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityBrakeDistancePageBinding;->brake:Landroid/widget/Button;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/e;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityBrakeDistancePageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityBrakeDistancePageBinding;->finishBrake:Landroid/widget/Button;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/i;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/i;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityBrakeDistancePageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityBrakeDistancePageBinding;->brakeData:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityBrakeDistancePageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityBrakeDistancePageBinding;->brakeData:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$b;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$b;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$a;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->j:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage$b;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityBrakeDistancePageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityBrakeDistancePageBinding;->clearArguments:Landroid/widget/Button;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/h;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/h;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityBrakeDistancePageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityBrakeDistancePageBinding;->unbrake:Landroid/widget/Button;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic o(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->n(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->k:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public synthetic q(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->p(Landroid/view/View;)V

    return-void
.end method

.method public synthetic s(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->r(Landroid/view/View;)V

    return-void
.end method

.method public synthetic u(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->t(Landroid/view/View;)V

    return-void
.end method

.method public synthetic w(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->v(Landroid/view/View;)V

    return-void
.end method

.method public synthetic y(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/test/BrakeDistanceTestPage;->x(Landroid/view/View;)V

    return-void
.end method
