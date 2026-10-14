.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;Z)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v6, Landroid/app/Dialog;

    invoke-direct {v6, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 3
    sget p1, Lcn/mucang/android/jiakaoyi/mapcollect/R$layout;->hpmap__windshield_dialog:I

    invoke-virtual {v6, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    sget p1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->title:I

    invoke-virtual {v6, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 5
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->input:I

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/EditText;

    const-string v0, ""

    if-eqz p3, :cond_0

    const-string v1, "\u8bbe\u7f6e\u524d\u5929\u7ebf\u8ddd\u79bb\u524d\u6321\u98ce\u73bb\u7483\u7684\u8ddd\u79bb(\u5355\u4f4d:\u5398\u7c73)"

    .line 6
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->frontDistance:D

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v1, "\u8bbe\u7f6e\u4e3b\u5929\u7ebf\u8ddd\u79bb\u540e\u6321\u98ce\u73bb\u7483\u7684\u8ddd\u79bb(\u5355\u4f4d:\u5398\u7c73)"

    .line 8
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->backDistance:D

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :goto_0
    sget p1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->make_sure:I

    invoke-virtual {v6, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v7, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/e;

    move-object v0, v7

    move-object v1, p0

    move v3, p3

    move-object v4, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/e;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/j;Landroid/widget/EditText;ZLcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;Landroid/app/Dialog;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

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

.method private synthetic b(Landroid/widget/EditText;ZLcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/j;->a(Landroid/widget/EditText;)D

    move-result-wide v0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p3, v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->t(D)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p3, v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->s(D)V

    .line 4
    :goto_0
    invoke-virtual {p4}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public synthetic c(Landroid/widget/EditText;ZLcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/j;->b(Landroid/widget/EditText;ZLcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
