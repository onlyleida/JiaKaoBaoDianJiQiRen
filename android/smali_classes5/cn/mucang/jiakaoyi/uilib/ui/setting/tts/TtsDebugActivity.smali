.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity$a;,
        Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsDebugBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \r2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\r\u000eB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsDebugBinding;",
        "()V",
        "index",
        "",
        "speakers",
        "",
        "Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;",
        "getStatName",
        "",
        "init",
        "",
        "Companion",
        "VoiceItemBinder",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final d:Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity$a;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;->d:Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalError:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->Teach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->VoiceRobot:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;->b:Ljava/util/List;

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;->c:I

    return p0
.end method

.method public static final synthetic k(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;->b:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic l(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;->c:I

    return-void
.end method

.method private static final m(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final n(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsDebugBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsDebugBinding;->editTv:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;->b:Ljava/util/List;

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;->c:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 2
    iget p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;->c:I

    return-void
.end method

.method public static synthetic o(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;->m(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;->n(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8bed\u97f3\u8c03\u8bd5"

    return-object v0
.end method

.method protected init()V
    .locals 27

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsDebugBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsDebugBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v2, "\u8bed\u97f3\u8c03\u8bd5"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsDebugBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsDebugBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/a;

    invoke-direct {v2, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/a;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsDebugBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsDebugBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsDebugBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsDebugBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/d;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Landroidx/recyclerview/widget/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsDebugBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsDebugBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v8, Lcom/drakeet/multitype/f;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 7
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity$b;

    invoke-direct {v2, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity$b;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;)V

    .line 8
    const-class v3, Ljava/lang/String;

    invoke-virtual {v8, v3, v2}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    const-string v9, "\u9ad8\u4e8e\u4e00\u6321\u884c\u9a76"

    const-string v10, "\u6321\u4f4d\u4e0e\u901f\u5ea6\u4e0d\u5339\u914d"

    const-string v11, "\u884c\u9a76\u4e2d\u7a7a\u6321\u6ed1\u884c"

    const-string v12, "\u5012\u5e93\u4e0d\u5165"

    const-string v13, "\u653e\u624b\u5239\u65f6\u6ca1\u8e29\u811a\u5239"

    const-string v14, "\u62c9\u624b\u5239\u65f6\u6ca1\u8e29\u811a\u5239"

    const-string v15, "\u5728\u9879\u76ee\u5916\u957f\u65f6\u95f4\u4f7f\u7528\u706f\u5149"

    const-string v16, "\u7a7a\u6321\u8e29\u6cb9\u95e8"

    const-string v17, "\u8d77\u6b65\u8d85\u65f6\uff08\u4ece\u653e\u624b\u5239\u5f00\u59cb\uff09"

    const-string v18, "\u672a\u6309\u8bed\u97f3\u6307\u4ee4\u5e73\u7a33\u52a0\u51cf\u6321"

    const-string v19, "\u8f66\u8f86\u505c\u7a33\u540e\u672a\u6309\u89c4\u5b9a\u62c9\u8d77\u624b\u5239"

    const-string v20, "\u8bf7\u7cfb\u5b89\u5168\u5e26"

    const-string v21, "\u672a\u677e\u5f00\u624b\u5239\u5373\u8d77\u6b65"

    const-string v22, "\u7262\u7262\u8bb0\u4f4f\u524d\u673a\u76d6\u4e0e\u524d\u8fb9\u7ebf\uff08\u5373\u4e0a\u8fb9\u7ebf\uff09\u7684\u4f4d\u7f6e\u5173\u7cfb\uff0c\u6b64\u5904\u662f\u5411\u5de6\u6253\u6ee1\u65b9\u5411\u7684\u5173\u952e\u53c2\u7167\u70b9\uff0c\u73b0\u5728\u8bf7\u5de6\u6253\u6ee1\u7ee7\u7eed\u7ec3\u4e60"

    const-string v23, "\u7262\u7262\u8bb0\u4f4f\u5de6\u540e\u89c6\u955c\u6839\u90e8\u4e0b\u6cbf\u4e0e\u63a7\u5236\u7ebf\u4e0b\u6cbf\u7684\u5173\u7cfb\uff0c\u73b0\u5728\u8bf7\u5411\u53f3\u6253\u6ee1\u65b9\u5411\uff0c\u6253\u5f00\u53f3\u8f6c\u5411\u706f\uff0c\u6162\u62ac\u79bb\u5408\u5668\u7ee7\u7eed\u5012\u8f66\uff0c\u89c2\u5bdf\u5de6\u540e\u89c6\u955c"

    const-string v24, "\u4fa7\u65b9\u505c\u8f66\uff0c\u9760\u53f3\u4fa7\u8fb9\u7ebf\u6162\u901f\u884c\u9a76\uff0c\u6ce8\u610f\u96e8\u5237\u5668\u94c6\u9489\u5904\uff0c\u59cb\u7ec8\u4e0e\u9053\u8def\u53f3\u8fb9\u7ebf\u4fdd\u6301\u91cd\u5408\u884c\u9a76"

    const-string v25, "\u7262\u7262\u8bb0\u4f4f\u5de6\u540e\u89c6\u955c\u6839\u90e8\u4e0b\u6cbf\u4e0e\u505c\u8f66\u6869\u7ebf\u7684\u5173\u7cfb\uff0c\u73b0\u5728\u8bf7\u6162\u62ac\u79bb\u5408\uff0c\u8f66\u8f86\u6296\u52a8\u6216\u8005\u8f66\u5934\u62ac\u8d77\u65f6\uff0c\u653e\u4e0b\u624b\u5239\u677e\u5f00\u811a\u5239\u7ee7\u7eed\u4e0a\u5761"

    const-string v26, "\u8fdb\u5165\u66f2\u7ebf\uff0c\u8bf7\u6162\u901f\u884c\u9a76\uff0c\u89c2\u5bdf\u524d\u673a\u76d6\u5de6\u4fa7\u4e09\u5206\u4e4b\u4e00\u5904\u4e0e\u9053\u8def\u53f3\u8fb9\u7ebf\u91cd\u5408\u65f6\u8fc5\u901f\u5de6\u6253\u4e00\u5708\u52a0\u4e5d\u5341\u5ea6\u65b9\u5411"

    .line 9
    filled-new-array/range {v9 .. v26}, [Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v2}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 11
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 12
    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsDebugBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingTtsDebugBinding;->playTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/b;

    invoke-direct {v2, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/b;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
