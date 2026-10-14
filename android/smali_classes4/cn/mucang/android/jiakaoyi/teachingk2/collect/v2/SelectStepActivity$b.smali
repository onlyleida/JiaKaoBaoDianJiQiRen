.class public final Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity$b;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemSelectStepBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0002H\u0002J\u001e\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000b2\u0006\u0010\u000c\u001a\u00020\u0002H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity$StepItemBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemSelectStepBinding;",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity;)V",
        "getStepIcon",
        "",
        "step",
        "onBindViewHolder",
        "",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
        "TeachingK2_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity$b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    return-void
.end method

.method private final n(Lcn/mucang/android/jiakaoyi/engine/model/Step;)I
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity$b$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->step_icon_b2_hualu:I

    goto/16 :goto_0

    .line 3
    :pswitch_1
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->step_icon_b2_gaosu:I

    goto :goto_0

    .line 4
    :pswitch_2
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->step_icon_b2_shanlu:I

    goto :goto_0

    .line 5
    :pswitch_3
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->step_icon_b2_qifu:I

    goto :goto_0

    .line 6
    :pswitch_4
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->step_icon_b2_zhangai:I

    goto :goto_0

    .line 7
    :pswitch_5
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->step_icon_b2_xiankuan:I

    goto :goto_0

    .line 8
    :pswitch_6
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->step_icon_b2_danbian:I

    goto :goto_0

    .line 9
    :pswitch_7
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->step_icon_b2_zhuangkao:I

    goto :goto_0

    .line 10
    :pswitch_8
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->step_icon_b2_suidao:I

    goto :goto_0

    .line 11
    :pswitch_9
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->step_icon_b2_yuwu:I

    goto :goto_0

    .line 12
    :pswitch_a
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->step_icon_b2_jinji:I

    goto :goto_0

    .line 13
    :pswitch_b
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->step_icon_b2_zhailu:I

    goto :goto_0

    .line 14
    :pswitch_c
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->step_icon_b2_quxian:I

    goto :goto_0

    .line 15
    :pswitch_d
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->step_icon_b2_shangpo:I

    goto :goto_0

    .line 16
    :pswitch_e
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->step_icon_b2_zhijiao:I

    goto :goto_0

    .line 17
    :pswitch_f
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->step_icon_b2_cefang:I

    goto :goto_0

    .line 18
    :pswitch_10
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->step_icon_etc:I

    goto :goto_0

    .line 19
    :pswitch_11
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->step_icon_zhailu:I

    goto :goto_0

    .line 20
    :pswitch_12
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->step_icon_quka:I

    goto :goto_0

    .line 21
    :pswitch_13
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->step_icon_suidao:I

    goto :goto_0

    .line 22
    :pswitch_14
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->step_icon_hualu:I

    goto :goto_0

    .line 23
    :pswitch_15
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->step_icon_shangpo:I

    goto :goto_0

    .line 24
    :pswitch_16
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->step_icon_quxian:I

    goto :goto_0

    .line 25
    :pswitch_17
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->step_icon_zhijiao:I

    goto :goto_0

    .line 26
    :pswitch_18
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->step_icon_cefang:I

    goto :goto_0

    .line 27
    :pswitch_19
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->step_icon_daoku:I

    goto :goto_0

    .line 28
    :pswitch_1a
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$drawable;->step_icon_global:I

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity;Lcn/mucang/android/jiakaoyi/engine/model/Step;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity$b;->q(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity;Lcn/mucang/android/jiakaoyi/engine/model/Step;Landroid/view/View;)V

    return-void
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity;Lcn/mucang/android/jiakaoyi/engine/model/Step;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;->f:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$a;

    invoke-virtual {p2, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$a;->a(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity$b;->p(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    return-void
.end method

.method public p(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemSelectStepBinding;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemSelectStepBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemSelectStepBinding;->stepTv:Landroid/widget/TextView;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->zhStepName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemSelectStepBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemSelectStepBinding;->imageIv:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity$b;->n(Lcn/mucang/android/jiakaoyi/engine/model/Step;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemSelectStepBinding;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemSelectStepBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity$b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/x0;

    invoke-direct {v1, v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/x0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
