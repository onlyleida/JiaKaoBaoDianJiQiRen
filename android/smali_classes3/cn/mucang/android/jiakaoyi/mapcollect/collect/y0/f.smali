.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 3
    sget p1, Lcn/mucang/android/jiakaoyi/mapcollect/R$layout;->hpmap__windshield_dialog:I

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    sget p1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->title:I

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 5
    sget v1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->input:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "\u91c7\u96c6\u4e3b\u5929\u7ebf\u8611\u83c7\u5934\u9876\u90e8\u5230\u5730\u9762\u7684\u8ddd\u79bb(\u5355\u4f4d:\u5398\u7c73)"

    .line 6
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosHeight:D

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8
    sget p1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->make_sure:I

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/a;

    invoke-direct {v2, p0, v1, p2, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/a;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/f;Landroid/widget/EditText;Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;Landroid/app/Dialog;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private a(Landroid/widget/EditText;)D
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private synthetic b(Landroid/widget/EditText;Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/f;->a(Landroid/widget/EditText;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p2, v0, v1, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->A(DZ)Z

    .line 3
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :cond_0
    const-string p1, "\u6570\u636e\u4e0d\u5408\u6cd5"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic c(Landroid/widget/EditText;Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/f;->b(Landroid/widget/EditText;Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
