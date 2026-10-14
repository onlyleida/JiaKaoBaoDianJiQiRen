.class public final Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final avatar:Landroid/widget/ImageView;

.field public final leftLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final llBack:Landroid/widget/LinearLayout;

.field public final pager:Lcn/mucang/android/core/widget/CommonViewPager;

.field public final pagerVoice:Lcn/mucang/android/core/widget/CommonViewPager;

.field public final playTts:Landroid/widget/LinearLayout;

.field public final rightLayout:Landroid/widget/LinearLayout;

.field public final rlLayout:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final signOut:Landroid/widget/LinearLayout;

.field public final tab:Lnet/lucode/hackware/magicindicator/MagicIndicator;

.field public final tabVoice:Lnet/lucode/hackware/magicindicator/MagicIndicator;

.field public final takeCoachPhoto:Landroid/widget/LinearLayout;

.field public final takePhoto:Landroid/widget/LinearLayout;

.field public final tvDelay:Landroid/widget/TextView;

.field public final tvDelayNum:Landroid/widget/TextView;

.field public final voiceLayout:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Lcn/mucang/android/core/widget/CommonViewPager;Lcn/mucang/android/core/widget/CommonViewPager;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lnet/lucode/hackware/magicindicator/MagicIndicator;Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->avatar:Landroid/widget/ImageView;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->leftLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->llBack:Landroid/widget/LinearLayout;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->pager:Lcn/mucang/android/core/widget/CommonViewPager;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->pagerVoice:Lcn/mucang/android/core/widget/CommonViewPager;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->playTts:Landroid/widget/LinearLayout;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->rightLayout:Landroid/widget/LinearLayout;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->rlLayout:Landroid/widget/LinearLayout;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->signOut:Landroid/widget/LinearLayout;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->tab:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->tabVoice:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->takeCoachPhoto:Landroid/widget/LinearLayout;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->takePhoto:Landroid/widget/LinearLayout;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->tvDelay:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->tvDelayNum:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->voiceLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcn/mucang/sundial/library/R$id;->avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_f

    .line 2
    sget v1, Lcn/mucang/sundial/library/R$id;->left_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_e

    .line 3
    sget v1, Lcn/mucang/sundial/library/R$id;->llBack:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_d

    .line 4
    sget v1, Lcn/mucang/sundial/library/R$id;->pager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcn/mucang/android/core/widget/CommonViewPager;

    if-eqz v7, :cond_c

    .line 5
    sget v1, Lcn/mucang/sundial/library/R$id;->pager_voice:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcn/mucang/android/core/widget/CommonViewPager;

    if-eqz v8, :cond_b

    .line 6
    sget v1, Lcn/mucang/sundial/library/R$id;->playTts:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_a

    .line 7
    sget v1, Lcn/mucang/sundial/library/R$id;->right_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_9

    .line 8
    sget v1, Lcn/mucang/sundial/library/R$id;->rlLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_8

    .line 9
    sget v1, Lcn/mucang/sundial/library/R$id;->sign_out:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_7

    .line 10
    sget v1, Lcn/mucang/sundial/library/R$id;->tab:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v13, :cond_6

    .line 11
    sget v1, Lcn/mucang/sundial/library/R$id;->tab_voice:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v14, :cond_5

    .line 12
    sget v1, Lcn/mucang/sundial/library/R$id;->takeCoachPhoto:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/widget/LinearLayout;

    if-eqz v15, :cond_4

    .line 13
    sget v1, Lcn/mucang/sundial/library/R$id;->takePhoto:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/widget/LinearLayout;

    if-eqz v16, :cond_3

    .line 14
    sget v1, Lcn/mucang/sundial/library/R$id;->tvDelay:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_2

    .line 15
    sget v1, Lcn/mucang/sundial/library/R$id;->tvDelayNum:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_1

    .line 16
    sget v1, Lcn/mucang/sundial/library/R$id;->voice_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Landroid/widget/LinearLayout;

    if-eqz v19, :cond_0

    .line 17
    new-instance v1, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;

    move-object v2, v1

    move-object v3, v0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v19}, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Lcn/mucang/android/core/widget/CommonViewPager;Lcn/mucang/android/core/widget/CommonViewPager;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lnet/lucode/hackware/magicindicator/MagicIndicator;Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    return-object v1

    :cond_0
    const-string v0, "voiceLayout"

    goto :goto_0

    :cond_1
    const-string v0, "tvDelayNum"

    goto :goto_0

    :cond_2
    const-string v0, "tvDelay"

    goto :goto_0

    :cond_3
    const-string v0, "takePhoto"

    goto :goto_0

    :cond_4
    const-string v0, "takeCoachPhoto"

    goto :goto_0

    :cond_5
    const-string v0, "tabVoice"

    goto :goto_0

    :cond_6
    const-string v0, "tab"

    goto :goto_0

    :cond_7
    const-string v0, "signOut"

    goto :goto_0

    :cond_8
    const-string v0, "rlLayout"

    goto :goto_0

    :cond_9
    const-string v0, "rightLayout"

    goto :goto_0

    :cond_a
    const-string v0, "playTts"

    goto :goto_0

    :cond_b
    const-string v0, "pagerVoice"

    goto :goto_0

    :cond_c
    const-string v0, "pager"

    goto :goto_0

    :cond_d
    const-string v0, "llBack"

    goto :goto_0

    :cond_e
    const-string v0, "leftLayout"

    goto :goto_0

    :cond_f
    const-string v0, "avatar"

    .line 18
    :goto_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/sundial/library/R$layout;->tt__activity_student_info:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
