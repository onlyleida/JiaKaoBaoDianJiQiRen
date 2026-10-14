.class public Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;
    }
.end annotation


# direct methods
.method public static a(Landroid/app/Activity;JLcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/f;-><init>(Landroid/app/Activity;JLcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static b(Landroid/app/Activity;JLcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;Landroid/app/Dialog;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;)V
    .locals 9

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/g;

    move-object v1, v8

    move-object v2, p5

    move-wide v3, p1

    move-object v5, p0

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/g;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;JLandroid/app/Activity;Landroid/app/Dialog;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;)V

    const-string p0, "\u6b63\u5728\u521b\u5efa..."

    const-string p1, "\u521b\u5efa\u5931\u8d25"

    invoke-virtual {v0, v8, p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;J)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/q/e;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/q/e;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;->c:Ljava/lang/String;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;->a:I

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;->b:Ljava/lang/String;

    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;->d:J

    iget v8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;->e:I

    move-wide v4, p1

    invoke-virtual/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/login/q/e;->n(Ljava/lang/String;ILjava/lang/String;JJI)Z

    move-result p0

    return p0
.end method

.method private static d(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;Landroid/app/Dialog;)V
    .locals 7

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->select_gear_type_sp:I

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    const-string v0, "\u5168\u90e8\u6863\u4f4d"

    const-string v1, "\u624b\u52a8\u6321"

    const-string v2, "\u81ea\u52a8\u6321"

    .line 2
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v4

    .line 3
    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$a;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$layout;->template_simple_spinner_item:I

    move-object v0, v6

    move-object v1, p0

    move-object v3, v4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$a;-><init>(Landroid/content/Context;I[Ljava/lang/String;[Ljava/lang/String;Landroid/widget/Spinner;)V

    .line 4
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$b;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;)V

    invoke-virtual {p2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 5
    invoke-virtual {p2, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private static e(Landroid/app/Activity;Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;Landroid/app/Dialog;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;",
            "Landroid/app/Dialog;",
            ")V"
        }
    .end annotation

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->select_template:I

    invoke-virtual {p3, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 2
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->head_select_template:I

    invoke-virtual {p3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p0, 0x8

    .line 4
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 5
    invoke-virtual {p3, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r;->o(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v5

    .line 7
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$c;

    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$layout;->template_simple_spinner_item:I

    move-object v1, p3

    move-object v2, p0

    move-object v4, v5

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$c;-><init>(Landroid/content/Context;I[Ljava/lang/String;[Ljava/lang/String;Landroid/widget/Spinner;)V

    .line 8
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$d;

    invoke-direct {p0, p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;Ljava/util/List;)V

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 9
    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :goto_0
    return-void
.end method

.method static synthetic f(Landroid/app/Activity;JLcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;)V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/b/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/b/b;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/b/b;->n()Ljava/util/List;

    move-result-object v5

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/h;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/h;-><init>(Landroid/app/Activity;JLjava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "\u83b7\u53d6\u521b\u5efa\u4fe1\u606f\u5931\u8d25"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic g(Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;JLandroid/app/Activity;Landroid/app/Dialog;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r;->c(Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;J)Z

    move-result p0

    .line 2
    invoke-static {p3}, Lcn/mucang/android/core/utils/d;->d(Landroid/app/Activity;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    const-string p0, "\u521b\u5efa\u6559\u5b66\u65b9\u6848\u6210\u529f"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p4}, Landroid/app/Dialog;->dismiss()V

    .line 5
    invoke-virtual {p5, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;->c(J)V

    goto :goto_0

    :cond_1
    const-string p0, "\u521b\u5efa\u6559\u5b66\u65b9\u6848\u5931\u8d25"

    .line 6
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic h(Landroid/app/Activity;JLjava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r;->n(Landroid/app/Activity;JLjava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;)V

    return-void
.end method

.method static synthetic i(Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getCarDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getCarDesc()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getCode()I

    move-result p0

    iput p0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;->a:I

    :cond_0
    return-void
.end method

.method static synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;Landroid/widget/TextView;Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 1
    sget p2, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->allTypeRb:I

    if-ne p3, p2, :cond_0

    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;->a:I

    const-string p2, ""

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic k(Landroid/widget/RadioGroup;Landroid/app/Activity;Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p0

    sget p4, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->allTypeRb:I

    if-ne p0, p4, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/b;

    invoke-direct {p0, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/b;-><init>(Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;)V

    invoke-static {p1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->z(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method static synthetic l(Landroid/widget/TextView;Landroid/widget/RadioGroup;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;Landroid/app/Activity;JLcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p8

    if-eqz p8, :cond_0

    const-string p0, "\u8bf7\u8f93\u5165\u65b9\u6848\u540d\u79f0"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget p8, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->singleTypeRb:I

    if-ne p1, p8, :cond_1

    .line 5
    iget p1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;->a:I

    if-nez p1, :cond_1

    const-string p0, "\u8bf7\u9009\u62e9\u8f66\u578b"

    .line 6
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    iput-object p0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;->c:Ljava/lang/String;

    move-object v0, p3

    move-wide v1, p4

    move-object v3, p6

    move-object v4, p7

    move-object v5, p2

    .line 8
    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r;->b(Landroid/app/Activity;JLcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;Landroid/app/Dialog;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;)V

    return-void
.end method

.method static synthetic m(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private static n(Landroid/app/Activity;JLjava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "J",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$a;)V

    .line 2
    new-instance v9, Landroid/app/Dialog;

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$style;->jiakaoyi__dialog:I

    invoke-direct {v9, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$layout;->dialog_create_teach_plan:I

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->name:I

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    .line 5
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->select_car_model:I

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6
    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->carTypeRg:I

    invoke-virtual {v9, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    .line 7
    invoke-static {p0, v3, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r;->d(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;Landroid/app/Dialog;)V

    .line 8
    invoke-static {p0, p3, v3, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r;->e(Landroid/app/Activity;Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;Landroid/app/Dialog;)V

    .line 9
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/c;

    invoke-direct {p3, v3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;Landroid/widget/TextView;)V

    invoke-virtual {v2, p3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 10
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/e;

    invoke-direct {p3, v2, p0, v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/e;-><init>(Landroid/widget/RadioGroup;Landroid/app/Activity;Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    sget p3, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->confirm:I

    invoke-virtual {v9, p3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/d;

    move-object v0, v10

    move-object v4, p0

    move-wide v5, p1

    move-object v7, p4

    move-object v8, v9

    invoke-direct/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/d;-><init>(Landroid/widget/TextView;Landroid/widget/RadioGroup;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;Landroid/app/Activity;JLcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;Landroid/app/Dialog;)V

    invoke-virtual {p3, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->cancel:I

    invoke-virtual {v9, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/a;

    invoke-direct {p1, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/a;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-static {v9}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->c(Landroid/app/Dialog;)V

    .line 14
    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static o(Ljava/util/List;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u4e0d\u9009\u62e9\u6a21\u5757"

    .line 2
    aput-object v3, v0, v2

    .line 3
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-gt v1, v2, :cond_0

    add-int/lit8 v2, v1, -0x1

    .line 4
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->programmeName:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
