.class public final Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/b;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\tH\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J$\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u001a\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u00122\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0012\u0010\u001b\u001a\u00020\r2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0006H\u0002J\u0010\u0010\u001d\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008j\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseFragment;",
        "()V",
        "binding",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/FragmentCollectErrorsNewBinding;",
        "data",
        "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
        "viewMap",
        "Ljava/util/HashMap;",
        "",
        "Landroid/widget/CheckBox;",
        "Lkotlin/collections/HashMap;",
        "addError",
        "",
        "errorType",
        "getStatName",
        "",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "view",
        "setData",
        "model",
        "setDelay",
        "error",
        "Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;",
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
.field private b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

.field private c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/FragmentCollectErrorsNewBinding;

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/b;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->d:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic r(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->t(I)V

    return-void
.end method

.method public static final synthetic s(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    return-object p0
.end method

.method private final t(I)V
    .locals 11

    const/4 v0, 0x5

    const/4 v1, -0x1

    const-string v2, "errorVariables"

    const/4 v3, 0x0

    const-string v4, "this"

    const/4 v5, 0x0

    if-ne p1, v0, :cond_6

    .line 1
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-nez v6, :cond_0

    goto :goto_4

    :cond_0
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->errors:Ljava/util/List;

    if-nez v6, :cond_1

    goto :goto_4

    :cond_1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->create(I)Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;

    move-result-object v0

    .line 2
    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->x(Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V

    .line 3
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorForm:Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

    instance-of v8, v7, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    if-eqz v8, :cond_2

    check-cast v7, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    goto :goto_0

    :cond_2
    move-object v7, v3

    :goto_0
    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    const-string v8, "\u672a\u5f00\u8f6c\u5411\u706f"

    iput-object v8, v7, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->voice:Ljava/lang/String;

    .line 4
    :goto_1
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    invoke-static {v7, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 6
    check-cast v9, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;

    .line 7
    instance-of v9, v9, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/LightVariable;

    if-eqz v9, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    const/4 v8, -0x1

    .line 8
    :goto_3
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    new-instance v9, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/LightVariable;

    sget-object v10, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->Off:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v10, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-direct {v9, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/LightVariable;-><init>(I)V

    invoke-interface {v7, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v7, Lkotlin/v;->a:Lkotlin/v;

    .line 10
    invoke-interface {v6, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_6
    :goto_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_d

    .line 11
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-nez v6, :cond_7

    goto :goto_9

    :cond_7
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->errors:Ljava/util/List;

    if-nez v6, :cond_8

    goto :goto_9

    :cond_8
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->create(I)Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;

    move-result-object v0

    .line 12
    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->x(Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V

    .line 13
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorForm:Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

    instance-of v8, v7, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    if-eqz v8, :cond_9

    check-cast v7, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    goto :goto_5

    :cond_9
    move-object v7, v3

    :goto_5
    if-nez v7, :cond_a

    goto :goto_6

    :cond_a
    const-string v8, "\u8f6c\u5411\u706f\u9519\u8bef"

    iput-object v8, v7, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->voice:Ljava/lang/String;

    .line 14
    :goto_6
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    invoke-static {v7, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 16
    check-cast v9, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;

    .line 17
    instance-of v9, v9, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/LightVariable;

    if-eqz v9, :cond_b

    goto :goto_8

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_c
    const/4 v8, -0x1

    .line 18
    :goto_8
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    new-instance v9, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/LightVariable;

    sget-object v10, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v10, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-direct {v9, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/LightVariable;-><init>(I)V

    invoke-interface {v7, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v7, Lkotlin/v;->a:Lkotlin/v;

    .line 20
    invoke-interface {v6, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_d
    :goto_9
    const/4 v0, 0x7

    const/4 v6, 0x1

    if-ne p1, v0, :cond_14

    .line 21
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-nez v7, :cond_e

    goto :goto_e

    :cond_e
    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->errors:Ljava/util/List;

    if-nez v7, :cond_f

    goto :goto_e

    :cond_f
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->create(I)Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;

    move-result-object v0

    .line 22
    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->x(Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V

    .line 23
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorForm:Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

    instance-of v9, v8, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    if-eqz v9, :cond_10

    check-cast v8, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    goto :goto_a

    :cond_10
    move-object v8, v3

    :goto_a
    if-nez v8, :cond_11

    goto :goto_b

    :cond_11
    const-string v9, "\u672a\u53ca\u65f6\u5239\u8f66"

    iput-object v9, v8, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->voice:Ljava/lang/String;

    .line 24
    :goto_b
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    invoke-static {v8, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 26
    check-cast v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;

    .line 27
    instance-of v10, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/FootBrakeVariable;

    if-eqz v10, :cond_12

    goto :goto_d

    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_13
    const/4 v9, -0x1

    .line 28
    :goto_d
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/FootBrakeVariable;

    invoke-direct {v10, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/FootBrakeVariable;-><init>(Z)V

    invoke-interface {v8, v9, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v8, Lkotlin/v;->a:Lkotlin/v;

    .line 30
    invoke-interface {v7, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_14
    :goto_e
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1b

    .line 31
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-nez v7, :cond_15

    goto :goto_13

    :cond_15
    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->errors:Ljava/util/List;

    if-nez v7, :cond_16

    goto :goto_13

    :cond_16
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->create(I)Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;

    move-result-object v0

    .line 32
    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->x(Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V

    .line 33
    iput v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->checkType:I

    .line 34
    iput-boolean v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->isRightCheck:Z

    .line 35
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorForm:Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

    instance-of v9, v8, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    if-eqz v9, :cond_17

    check-cast v8, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    goto :goto_f

    :cond_17
    move-object v8, v3

    :goto_f
    if-nez v8, :cond_18

    goto :goto_10

    :cond_18
    const-string v9, "\u8bf7\u6309\u6559\u5b66\u5f80\u524d\u770b"

    iput-object v9, v8, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->voice:Ljava/lang/String;

    .line 36
    :goto_10
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    invoke-static {v8, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :goto_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 38
    check-cast v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;

    .line 39
    instance-of v10, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;

    if-eqz v10, :cond_19

    goto :goto_12

    :cond_19
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    :cond_1a
    const/4 v9, -0x1

    .line 40
    :goto_12
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;

    invoke-direct {v10, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;-><init>(I)V

    invoke-interface {v8, v9, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v8, Lkotlin/v;->a:Lkotlin/v;

    .line 42
    invoke-interface {v7, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1b
    :goto_13
    const/16 v0, 0x9

    if-ne p1, v0, :cond_22

    .line 43
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-nez v7, :cond_1c

    goto :goto_18

    :cond_1c
    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->errors:Ljava/util/List;

    if-nez v7, :cond_1d

    goto :goto_18

    :cond_1d
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->create(I)Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;

    move-result-object v0

    .line 44
    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->x(Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V

    .line 45
    iput v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->checkType:I

    .line 46
    iput-boolean v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->isRightCheck:Z

    .line 47
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorForm:Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

    instance-of v9, v8, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    if-eqz v9, :cond_1e

    check-cast v8, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    goto :goto_14

    :cond_1e
    move-object v8, v3

    :goto_14
    if-nez v8, :cond_1f

    goto :goto_15

    :cond_1f
    const-string v9, "\u8bf7\u6309\u6559\u5b66\u6307\u793a\u770b\u5de6\u540e\u89c6\u955c\u70b9\u4f4d"

    iput-object v9, v8, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->voice:Ljava/lang/String;

    .line 48
    :goto_15
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    invoke-static {v8, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :goto_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_21

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 50
    check-cast v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;

    .line 51
    instance-of v10, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;

    if-eqz v10, :cond_20

    goto :goto_17

    :cond_20
    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    :cond_21
    const/4 v9, -0x1

    .line 52
    :goto_17
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;

    invoke-direct {v10, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;-><init>(I)V

    invoke-interface {v8, v9, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v8, Lkotlin/v;->a:Lkotlin/v;

    .line 54
    invoke-interface {v7, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_22
    :goto_18
    const/16 v0, 0xa

    if-ne p1, v0, :cond_29

    .line 55
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-nez p1, :cond_23

    goto :goto_1c

    :cond_23
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->errors:Ljava/util/List;

    if-nez p1, :cond_24

    goto :goto_1c

    :cond_24
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->create(I)Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;

    move-result-object v0

    .line 56
    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->x(Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V

    .line 57
    iput v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->checkType:I

    .line 58
    iput-boolean v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->isRightCheck:Z

    .line 59
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorForm:Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

    instance-of v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    if-eqz v6, :cond_25

    move-object v3, v4

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    :cond_25
    if-nez v3, :cond_26

    goto :goto_19

    :cond_26
    const-string v4, "\u8bf7\u6309\u6559\u5b66\u6307\u793a\u770b\u53f3\u540e\u89c6\u955c\u70b9\u4f4d"

    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->voice:Ljava/lang/String;

    .line 60
    :goto_19
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 62
    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;

    .line 63
    instance-of v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;

    if-eqz v4, :cond_27

    move v1, v3

    goto :goto_1b

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 64
    :cond_28
    :goto_1b
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;-><init>(I)V

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    .line 66
    invoke-interface {p1, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_29
    :goto_1c
    return-void
.end method

.method public static synthetic u(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$f;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->v(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$f;)V

    return-void
.end method

.method private static final v(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$f;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->w(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return-void
.end method

.method private final w(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->errors:Ljava/util/List;

    if-nez p1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->d:Ljava/util/HashMap;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private final x(Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V
    .locals 3

    .line 1
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->stopVariables:Ljava/util/List;

    const-string v0, "error.stopVariables"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;

    .line 3
    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DelayTimeVariable;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DelayTimeVariable;

    const-wide/16 v1, 0xbb8

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DelayTimeVariable;->delayTime:J

    :cond_1
    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u9519\u8bef\u68c0\u6d4b\u9875\u97622.0"

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/FragmentCollectErrorsNewBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/FragmentCollectErrorsNewBinding;

    move-result-object p1

    const-string p2, "inflate(inflater)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/FragmentCollectErrorsNewBinding;

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->d:Ljava/util/HashMap;

    const/4 p2, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/FragmentCollectErrorsNewBinding;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-eqz p3, :cond_7

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/FragmentCollectErrorsNewBinding;->lightOpenCb:Landroid/widget/CheckBox;

    const-string v2, "binding.lightOpenCb"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->d:Ljava/util/HashMap;

    const/4 p2, 0x6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/FragmentCollectErrorsNewBinding;

    if-eqz p3, :cond_6

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/FragmentCollectErrorsNewBinding;->lightErrorCb:Landroid/widget/CheckBox;

    const-string v2, "binding.lightErrorCb"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->d:Ljava/util/HashMap;

    const/4 p2, 0x7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/FragmentCollectErrorsNewBinding;

    if-eqz p3, :cond_5

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/FragmentCollectErrorsNewBinding;->brakeCb:Landroid/widget/CheckBox;

    const-string v2, "binding.brakeCb"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->d:Ljava/util/HashMap;

    const/16 p2, 0x9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/FragmentCollectErrorsNewBinding;

    if-eqz p3, :cond_4

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/FragmentCollectErrorsNewBinding;->leftCb:Landroid/widget/CheckBox;

    const-string v2, "binding.leftCb"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->d:Ljava/util/HashMap;

    const/16 p2, 0xa

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/FragmentCollectErrorsNewBinding;

    if-eqz p3, :cond_3

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/FragmentCollectErrorsNewBinding;->rightCb:Landroid/widget/CheckBox;

    const-string v2, "binding.rightCb"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->d:Ljava/util/HashMap;

    const/16 p2, 0x8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/FragmentCollectErrorsNewBinding;

    if-eqz p3, :cond_2

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/FragmentCollectErrorsNewBinding;->noCb:Landroid/widget/CheckBox;

    const-string v2, "binding.noCb"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->d:Ljava/util/HashMap;

    .line 9
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    .line 11
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment$onCreateView$1$1;

    invoke-direct {v2, p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment$onCreateView$1$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;Ljava/util/Map$Entry;)V

    invoke-static {p3, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/p0;->i(Landroid/widget/CheckBox;Lkotlin/jvm/b/l;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->c:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/FragmentCollectErrorsNewBinding;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/FragmentCollectErrorsNewBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcn/mucang/android/core/config/q;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-class p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$f;

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object p2

    const-string v0, "viewLifecycleOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/t1;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/t1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void
.end method
