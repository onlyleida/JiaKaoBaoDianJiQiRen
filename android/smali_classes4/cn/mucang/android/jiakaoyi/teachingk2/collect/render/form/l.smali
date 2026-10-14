.class public Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;

.field private final e:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;ILcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->e:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 3
    sget p3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->addLineModel:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 4
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->selectorContainer:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->a:Landroid/view/View;

    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/d;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    sget p3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->lineTypeTv:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->b:Landroid/widget/TextView;

    .line 8
    sget p3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->selectOptionTv:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->c:Landroid/widget/TextView;

    .line 9
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->b:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 10
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->c:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 11
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->b:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/h;

    invoke-direct {v0, p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/h;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;I)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->c:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/e;

    invoke-direct {v0, p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;I)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->deleteIv:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 14
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/b;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->a()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->d:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;

    const/16 v0, 0x1f4

    .line 4
    iput v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->onTime:I

    .line 5
    iput v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->offTime:I

    const/16 v0, 0x1388

    .line 6
    iput v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->duration:I

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->b:Landroid/widget/TextView;

    const-string v0, "\u9009\u62e9\u7ebf\u7c7b\u578b"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->c:Landroid/widget/TextView;

    const-string v0, "\u9009\u9879"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private synthetic d(ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->t(Landroid/view/View;I)V

    return-void
.end method

.method private synthetic f(ILandroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->d:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->lineType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->e:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz p1, :cond_6

    .line 5
    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->a:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    .line 7
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->s(ILandroid/view/View;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne v1, v0, :cond_4

    .line 8
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->u(ILandroid/view/View;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    if-ne v1, v0, :cond_5

    .line 9
    invoke-direct {p0, p1, p2, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->r(ILandroid/view/View;Z)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    if-ne v1, v0, :cond_6

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->r(ILandroid/view/View;Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method private synthetic h(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->d:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;

    return-void
.end method

.method private synthetic j([Ljava/lang/String;Landroidx/appcompat/widget/d0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    aget-object p1, p1, p5

    .line 2
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->d:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;

    if-eqz p3, :cond_1

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/a;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p3, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->pointIndexList:Ljava/util/List;

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->e:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const/16 p3, 0x8

    if-eqz p1, :cond_0

    .line 5
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->d:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;

    invoke-interface {p1, p4}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->a:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->a:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_1
    invoke-virtual {p2}, Landroidx/appcompat/widget/d0;->dismiss()V

    return-void
.end method

.method private synthetic l(Ljava/util/List;Landroidx/appcompat/widget/d0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    .line 2
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->d:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;

    if-eqz p3, :cond_0

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->objectName:Ljava/lang/String;

    iget-object p4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->unityName:Ljava/lang/String;

    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p2}, Landroidx/appcompat/widget/d0;->dismiss()V

    return-void

    .line 4
    :cond_0
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->c:Landroid/widget/TextView;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 5
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->d:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;

    if-eqz p3, :cond_2

    .line 6
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->unityName:Ljava/lang/String;

    iput-object p1, p3, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->objectName:Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->e:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const/16 p4, 0x8

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p1, p3}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->a:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->a:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :cond_2
    invoke-virtual {p2}, Landroidx/appcompat/widget/d0;->dismiss()V

    return-void
.end method

.method private synthetic n(Ljava/util/List;Landroidx/appcompat/widget/d0;ILandroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->b:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p4

    invoke-interface {p1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/CharSequence;

    invoke-static {p4, p5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 2
    invoke-virtual {p2}, Landroidx/appcompat/widget/d0;->dismiss()V

    return-void

    .line 3
    :cond_0
    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;->getLineTipTypes(I)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;->getType()I

    move-result p3

    const/4 p4, 0x2

    if-ne p3, p4, :cond_1

    .line 4
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->c:Landroid/widget/TextView;

    const-string p5, "\u9009\u62e9\u7ebf\u6bb5"

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 p4, 0x3

    if-ne p3, p4, :cond_2

    .line 5
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->c:Landroid/widget/TextView;

    const-string p5, "\u9009\u62e9\u70b9"

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 p4, 0x1

    if-ne p3, p4, :cond_3

    .line 6
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->c:Landroid/widget/TextView;

    const-string p5, "\u91c7\u96c6\u7ebf\u6846"

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const/4 p4, 0x4

    if-ne p3, p4, :cond_4

    .line 7
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->c:Landroid/widget/TextView;

    const-string p5, "\u9009\u62e9\u533a\u57df"

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const/4 p4, 0x5

    if-ne p3, p4, :cond_5

    .line 8
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->c:Landroid/widget/TextView;

    const-string p5, "\u9009\u62e9\u89d2"

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_5
    :goto_0
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->b:Landroid/widget/TextView;

    invoke-interface {p1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->c:Landroid/widget/TextView;

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->d:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;

    if-eqz p1, :cond_6

    .line 12
    iput p3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->lineType:I

    .line 13
    :cond_6
    invoke-virtual {p2}, Landroidx/appcompat/widget/d0;->dismiss()V

    return-void
.end method

.method private synthetic p([ILandroidx/appcompat/widget/d0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    aget p1, p1, p5

    .line 2
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->d:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;

    if-eqz p3, :cond_0

    iget p3, p3, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->pointIndex:I

    if-ne p3, p1, :cond_0

    .line 3
    invoke-virtual {p2}, Landroidx/appcompat/widget/d0;->dismiss()V

    return-void

    .line 4
    :cond_0
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->c:Landroid/widget/TextView;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 5
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->d:Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;

    if-eqz p3, :cond_2

    .line 6
    iput p1, p3, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->pointIndex:I

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->e:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const/16 p4, 0x8

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p1, p3}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->a:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->a:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :cond_2
    invoke-virtual {p2}, Landroidx/appcompat/widget/d0;->dismiss()V

    return-void
.end method

.method private r(ILandroid/view/View;Z)V
    .locals 3

    if-eqz p3, :cond_0

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;->getAreas(I)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;->getAngles(I)[Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 3
    array-length p3, p1

    if-nez p3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 5
    new-instance v0, Landroidx/appcompat/widget/d0;

    invoke-direct {v0, p3}, Landroidx/appcompat/widget/d0;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance v1, Landroid/widget/ArrayAdapter;

    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$layout;->new_collect_list_item:I

    invoke-direct {v1, p3, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/d0;->l(Landroid/widget/ListAdapter;)V

    const/4 p3, -0x2

    .line 7
    invoke-virtual {v0, p3}, Landroidx/appcompat/widget/d0;->P(I)V

    .line 8
    invoke-virtual {v0, p3}, Landroidx/appcompat/widget/d0;->G(I)V

    .line 9
    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/d0;->B(Landroid/view/View;)V

    .line 10
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/a;

    invoke-direct {p2, p0, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;[Ljava/lang/String;Landroidx/appcompat/widget/d0;)V

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/d0;->K(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 p1, 0x1

    .line 11
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d0;->I(Z)V

    .line 12
    invoke-virtual {v0}, Landroidx/appcompat/widget/d0;->show()V

    :cond_2
    :goto_1
    return-void
.end method

.method private s(ILandroid/view/View;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->find(I)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 6
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/form/UnityShowLine;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v2, Landroidx/appcompat/widget/d0;

    invoke-direct {v2, v0}, Landroidx/appcompat/widget/d0;-><init>(Landroid/content/Context;)V

    .line 8
    new-instance v3, Landroid/widget/ArrayAdapter;

    sget v4, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$layout;->new_collect_list_item:I

    invoke-direct {v3, v0, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/d0;->l(Landroid/widget/ListAdapter;)V

    const/4 v0, -0x2

    .line 9
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/d0;->P(I)V

    .line 10
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/d0;->G(I)V

    .line 11
    invoke-virtual {v2, p2}, Landroidx/appcompat/widget/d0;->B(Landroid/view/View;)V

    .line 12
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/c;

    invoke-direct {p2, p0, p1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;Ljava/util/List;Landroidx/appcompat/widget/d0;)V

    invoke-virtual {v2, p2}, Landroidx/appcompat/widget/d0;->K(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 p1, 0x1

    .line 13
    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/d0;->I(Z)V

    .line 14
    invoke-virtual {v2}, Landroidx/appcompat/widget/d0;->show()V

    return-void
.end method

.method private t(Landroid/view/View;I)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Landroidx/appcompat/widget/d0;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/d0;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;->getTypeNames(I)Ljava/util/List;

    move-result-object v2

    .line 4
    new-instance v3, Landroid/widget/ArrayAdapter;

    sget v4, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$layout;->new_collect_list_item:I

    invoke-direct {v3, v0, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/d0;->l(Landroid/widget/ListAdapter;)V

    const/4 v0, -0x2

    .line 5
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/d0;->P(I)V

    .line 6
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/d0;->G(I)V

    .line 7
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/d0;->B(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 8
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/d0;->I(Z)V

    .line 9
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/f;

    invoke-direct {p1, p0, v2, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;Ljava/util/List;Landroidx/appcompat/widget/d0;I)V

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/d0;->K(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 10
    invoke-virtual {v1}, Landroidx/appcompat/widget/d0;->show()V

    return-void
.end method

.method private u(ILandroid/view/View;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/LineTipTypeModel;->getPoints(I)[I

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 5
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 6
    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v2, Landroidx/appcompat/widget/d0;

    invoke-direct {v2, v0}, Landroidx/appcompat/widget/d0;-><init>(Landroid/content/Context;)V

    .line 8
    new-instance v3, Landroid/widget/ArrayAdapter;

    sget v4, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$layout;->new_collect_list_item:I

    invoke-direct {v3, v0, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/d0;->l(Landroid/widget/ListAdapter;)V

    const/4 v0, -0x2

    .line 9
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/d0;->P(I)V

    .line 10
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/d0;->G(I)V

    .line 11
    invoke-virtual {v2, p2}, Landroidx/appcompat/widget/d0;->B(Landroid/view/View;)V

    .line 12
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/g;

    invoke-direct {p2, p0, p1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/g;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;[ILandroidx/appcompat/widget/d0;)V

    invoke-virtual {v2, p2}, Landroidx/appcompat/widget/d0;->K(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 p1, 0x1

    .line 13
    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/d0;->I(Z)V

    .line 14
    invoke-virtual {v2}, Landroidx/appcompat/widget/d0;->show()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public synthetic c(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->b(Landroid/view/View;)V

    return-void
.end method

.method public synthetic e(ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->d(ILandroid/view/View;)V

    return-void
.end method

.method public synthetic g(ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->f(ILandroid/view/View;)V

    return-void
.end method

.method public synthetic i(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->h(Landroid/view/View;)V

    return-void
.end method

.method public synthetic k([Ljava/lang/String;Landroidx/appcompat/widget/d0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->j([Ljava/lang/String;Landroidx/appcompat/widget/d0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public synthetic m(Ljava/util/List;Landroidx/appcompat/widget/d0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->l(Ljava/util/List;Landroidx/appcompat/widget/d0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public synthetic o(Ljava/util/List;Landroidx/appcompat/widget/d0;ILandroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->n(Ljava/util/List;Landroidx/appcompat/widget/d0;ILandroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public synthetic q([ILandroidx/appcompat/widget/d0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/form/l;->p([ILandroidx/appcompat/widget/d0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
