.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;)V
    .locals 15

    move-object/from16 v2, p2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v12, Landroid/app/Dialog;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$layout;->hpmap__offset_dialog:I

    invoke-virtual {v12, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->left_front:I

    invoke-virtual {v12, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    .line 5
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->left_back:I

    invoke-virtual {v12, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/EditText;

    .line 6
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->right_front:I

    invoke-virtual {v12, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/EditText;

    .line 7
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->right_back:I

    invoke-virtual {v12, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/EditText;

    .line 8
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->left_front_width:I

    invoke-virtual {v12, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/EditText;

    .line 9
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->left_back_width:I

    invoke-virtual {v12, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/EditText;

    .line 10
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->right_front_width:I

    invoke-virtual {v12, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/EditText;

    .line 11
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->right_back_width:I

    invoke-virtual {v12, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/EditText;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v13, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftFrontOffset:D

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v13, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftBackOffset:D

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v13, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightFrontOffset:D

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v13, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightBackOffset:D

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v13, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftFrontWidth:D

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v13, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->leftBackWidth:D

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v13, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightFrontWidth:D

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;

    iget-wide v13, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->rightBackWidth:D

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 20
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->make_sure:I

    invoke-virtual {v12, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    new-instance v14, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/d;

    move-object v0, v14

    move-object v1, p0

    move-object v11, v12

    invoke-direct/range {v0 .. v11}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/d;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/i;Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-virtual {v12}, Landroid/app/Dialog;->show()V

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

.method private synthetic b(Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/i;->a(Landroid/widget/EditText;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->u(D)V

    .line 2
    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/i;->a(Landroid/widget/EditText;)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->w(D)V

    .line 3
    invoke-direct {p0, p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/i;->a(Landroid/widget/EditText;)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->E(D)V

    .line 4
    invoke-direct {p0, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/i;->a(Landroid/widget/EditText;)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->C(D)V

    .line 5
    invoke-direct {p0, p6}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/i;->a(Landroid/widget/EditText;)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->v(D)V

    .line 6
    invoke-direct {p0, p7}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/i;->a(Landroid/widget/EditText;)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->x(D)V

    .line 7
    invoke-direct {p0, p8}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/i;->a(Landroid/widget/EditText;)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->F(D)V

    .line 8
    invoke-direct {p0, p9}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/i;->a(Landroid/widget/EditText;)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;->D(D)V

    .line 9
    invoke-virtual {p10}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public synthetic c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/i;->b(Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/d;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
