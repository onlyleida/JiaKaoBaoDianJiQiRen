.class public Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;JJLcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;)V
    .locals 11

    .line 1
    new-instance v8, Landroid/app/Dialog;

    move-object v1, p0

    invoke-direct {v8, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$layout;->dialog_del_teach_plan:I

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->confirm:I

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/q;

    move-object v0, v10

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, v8

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/q;-><init>(Landroid/app/Activity;JJLandroid/app/Dialog;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->cancel:I

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/m;

    invoke-direct {v1, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/m;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static b(Landroid/app/Activity;JJLandroid/app/Dialog;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;)V
    .locals 10

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    move-object v4, p0

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance v9, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/j;

    move-object v1, v9

    move-wide v2, p3

    move-object/from16 v5, p6

    move-wide v6, p1

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/j;-><init>(JLandroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;JLandroid/app/Dialog;)V

    const-string v1, "\u6b63\u5728\u5220\u9664..."

    const-string v2, "\u5220\u9664\u5931\u8d25"

    invoke-virtual {v0, v9, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Landroid/app/Dialog;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;Z)V
    .locals 8

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/o;

    move-object v1, v7

    move v2, p4

    move-object v3, p1

    move-object v4, p0

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/o;-><init>(ZLcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;Landroid/app/Dialog;)V

    const-string p0, "\u6b63\u5728\u6267\u884c..."

    const-string p1, "\u64cd\u4f5c\u5931\u8d25"

    invoke-virtual {v0, v7, p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;Z)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->copy()Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    move-result-object v3

    .line 2
    new-instance v9, Landroid/app/Dialog;

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$style;->jiakaoyi__dialog:I

    invoke-direct {v9, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$layout;->dialog_create_teach_plan:I

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\uff08"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->getVersionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff09"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->title:I

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_0

    const-string v4, "\u590d\u5236\u65b9\u6848"

    goto :goto_0

    :cond_0
    const-string v4, "\u4fe1\u606f\u7f16\u8f91"

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->select_car_model:I

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->name:I

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 8
    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->carTypeRg:I

    invoke-virtual {v9, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    .line 9
    sget v4, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->editGroup:I

    invoke-virtual {v9, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-static {p0, v3, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/s;->e(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Landroid/app/Dialog;)V

    .line 11
    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->programmeName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->universalModelName:Ljava/lang/String;

    invoke-static {v4}, Lcn/mucang/android/core/utils/n0;->f(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 13
    sget v4, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->singleTypeRb:I

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 14
    :cond_1
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/n;

    invoke-direct {v4, v3, v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/n;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;)V

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 15
    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->universalModelName:Ljava/lang/String;

    invoke-static {v4}, Lcn/mucang/android/core/utils/n0;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "\u5168\u90e8\u8f66\u578b"

    goto :goto_1

    :cond_2
    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->universalModelName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/p;

    invoke-direct {v4, v2, p0, v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/p;-><init>(Landroid/widget/RadioGroup;Landroid/app/Activity;Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->cancel:I

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/l;

    invoke-direct {v4, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/l;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->confirm:I

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    new-instance v11, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/i;

    move-object v0, v11

    move-object v4, p1

    move v5, p3

    move-object v6, p0

    move-object v7, v9

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/i;-><init>(Landroid/widget/EditText;Landroid/widget/RadioGroup;Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;ZLandroid/app/Activity;Landroid/app/Dialog;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-static {v9}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->c(Landroid/app/Dialog;)V

    .line 20
    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static e(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Landroid/app/Dialog;)V
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
    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/s$a;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$layout;->template_simple_spinner_item:I

    move-object v0, v6

    move-object v1, p0

    move-object v3, v4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/s$a;-><init>(Landroid/content/Context;I[Ljava/lang/String;[Ljava/lang/String;Landroid/widget/Spinner;)V

    .line 4
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/s$b;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/s$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;)V

    invoke-virtual {p2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 5
    invoke-virtual {p2, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 6
    iget p0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->gearType:I

    invoke-virtual {p2, p0}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method static synthetic f(Landroid/app/Activity;JJLandroid/app/Dialog;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/s;->b(Landroid/app/Activity;JJLandroid/app/Dialog;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;)V

    return-void
.end method

.method static synthetic g(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic h(JLandroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;JLandroid/app/Dialog;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "\u5220\u9664\u6559\u5b66\u65b9\u6848\u5931\u8d25"

    .line 1
    :try_start_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/q/e;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/q/e;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/q/e;->o(J)Z

    move-result p0

    .line 2
    invoke-static {p2}, Lcn/mucang/android/core/utils/d;->d(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    const-string p0, "\u5220\u9664\u6559\u5b66\u65b9\u6848\u6210\u529f"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p3, p4, p5}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;->c(J)V

    .line 5
    invoke-virtual {p6}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic i(ZLcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;Landroid/app/Dialog;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "\u64cd\u4f5c\u5931\u8d25"

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/q/e;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/q/e;-><init>()V

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/q/e;->m(Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;)Z

    move-result p0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/q/e;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/q/e;-><init>()V

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/q/e;->p(Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;)Z

    move-result p0

    .line 3
    :goto_0
    invoke-static {p2}, Lcn/mucang/android/core/utils/d;->d(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    if-eqz p0, :cond_2

    const-string p0, "\u64cd\u4f5c\u6210\u529f"

    .line 4
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 5
    iget-wide p0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->examSiteId:J

    invoke-virtual {p3, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;->c(J)V

    .line 6
    invoke-virtual {p4}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 8
    :catch_0
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method static synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 1
    sget p3, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->allTypeRb:I

    const-string v0, ""

    if-ne p4, p3, :cond_0

    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->universalModelNum:I

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->universalModelName:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->singleTypeRb:I

    if-ne p4, p0, :cond_1

    .line 6
    iget-object p0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->universalModelName:Ljava/lang/String;

    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->f(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic k(Landroid/widget/RadioGroup;Landroid/app/Activity;Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p0

    sget p4, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->allTypeRb:I

    if-ne p0, p4, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/k;

    invoke-direct {p0, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/k;-><init>(Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;)V

    invoke-static {p1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->z(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method static synthetic l(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic m(Landroid/widget/EditText;Landroid/widget/RadioGroup;Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;ZLandroid/app/Activity;Landroid/app/Dialog;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p8

    if-eqz p8, :cond_0

    const-string p0, "\u65b9\u6848\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a"

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
    iget p1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->universalModelNum:I

    if-nez p1, :cond_1

    const-string p0, "\u8bf7\u9009\u62e9\u8f66\u578b"

    .line 6
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    iput-object p0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->programmeName:Ljava/lang/String;

    .line 8
    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-nez p4, :cond_2

    const-string p0, "\u4fe1\u606f\u6ca1\u66f4\u65b0"

    .line 9
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_2
    invoke-static {p5, p2, p6, p7, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/s;->c(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Landroid/app/Dialog;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;Z)V

    return-void
.end method

.method static synthetic n(Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V
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

    iput-object p0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->universalModelName:Ljava/lang/String;

    .line 4
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getCode()I

    move-result p0

    iput p0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;->universalModelNum:I

    :cond_0
    return-void
.end method
