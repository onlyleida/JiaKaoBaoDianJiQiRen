.class public final Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;
.super Landroidx/fragment/app/c;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\"\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00062\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0012\u0010\u0014\u001a\u00020\u000f2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J&\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0008\u0010\u001d\u001a\u00020\u000fH\u0016J\u0008\u0010\u001e\u001a\u00020\u000fH\u0016J\u001a\u0010\u001f\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u00182\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/deduct/dialog/SelectVoiceDialog;",
        "Landroidx/fragment/app/DialogFragment;",
        "voiceName",
        "",
        "(Ljava/lang/String;)V",
        "REQUEST_CODE_SELECT_FILE",
        "",
        "hasUserVoice",
        "",
        "mediaPlayer",
        "Landroid/media/MediaPlayer;",
        "viewBinding",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;",
        "voiceFilePath",
        "onActivityResult",
        "",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onDestroy",
        "onStart",
        "onViewCreated",
        "view",
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


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;

.field private final c:I

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "voiceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->a:Ljava/lang/String;

    const/16 p1, 0x64

    .line 2
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->c:I

    const-string p1, ""

    .line 3
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->d:Ljava/lang/String;

    return-void
.end method

.method private static final A(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, ""

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->d:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;->fileName:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;->audition:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;->delete:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private static final B(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final C(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->f:Landroid/media/MediaPlayer;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->f:Landroid/media/MediaPlayer;

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->f:Landroid/media/MediaPlayer;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 4
    :goto_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->f:Landroid/media/MediaPlayer;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 5
    :goto_1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->f:Landroid/media/MediaPlayer;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 6
    :goto_2
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->f:Landroid/media/MediaPlayer;

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/k;->a:Lcn/mucang/jiakaoyi/uilib/deduct/dialog/k;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :goto_3
    return-void
.end method

.method private static final D(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string v0, "mp"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method private static final E(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;Ljava/io/File;Landroid/view/View;)V
    .locals 5

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->d:Ljava/lang/String;

    invoke-static {p2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "\u8bbe\u7f6e\u5931\u8d25"

    const-string v1, "\u8bbe\u7f6e\u6210\u529f"

    if-eqz p2, :cond_2

    .line 2
    iget-boolean p2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->e:Z

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/c;->dismissAllowingStateLoss()V

    goto/16 :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string p0, "\u8bf7\u9009\u62e9\u8bed\u97f3\u6587\u4ef6"

    .line 7
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8
    :cond_2
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/login/j/a;->c()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->d:Ljava/lang/String;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 10
    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/c;->dismissAllowingStateLoss()V

    return-void

    .line 12
    :cond_3
    iget-boolean p2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->e:Z

    if-eqz p2, :cond_4

    .line 13
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 14
    :cond_4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/i/b;->g()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 15
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 16
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-static {p2, v2}, Lcn/mucang/android/core/utils/m;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 18
    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/d/b;->a:Lcn/mucang/android/jiakaoyi/framework/d/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5173\u8054\u97f3\u9891 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/d/b;->m(Ljava/lang/String;)V

    .line 19
    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/c;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 21
    :cond_5
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string p0, "\u8bf7\u5148\u767b\u5f55"

    .line 22
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public static synthetic r(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->y(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->A(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;Ljava/io/File;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->E(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;Ljava/io/File;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->D(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->B(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->C(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->z(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;Landroid/view/View;)V

    return-void
.end method

.method private static final y(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final z(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "audio/*"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.OPENABLE"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "\u8bed\u97f3\u6587\u4ef6\u9009\u62e9"

    .line 4
    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->c:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->c:I

    if-ne p1, v0, :cond_4

    const/4 p1, -0x1

    if-ne p2, p1, :cond_4

    if-eqz p3, :cond_4

    .line 2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3
    sget-object p2, Lcn/mucang/jiakaoyi/uilib/s/o;->a:Lcn/mucang/jiakaoyi/uilib/s/o;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcn/mucang/jiakaoyi/uilib/s/o;->b(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    if-nez p1, :cond_0

    move-object p1, p2

    :cond_0
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->d:Ljava/lang/String;

    .line 4
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;

    const/4 p2, 0x0

    const-string p3, "viewBinding"

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;->fileName:Landroid/widget/EditText;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->d:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/m;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;->audition:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;->delete:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_2
    invoke-static {p3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 9
    :cond_3
    invoke-static {p3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$style;->jiakaoyi_dialog_fragment:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/c;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "\u8bed\u97f3\u9009\u62e9"

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;

    move-result-object p1

    const-string p2, "inflate(layoutInflater)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "viewBinding"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->f:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 3
    :goto_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->f:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :goto_1
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->f:Landroid/media/MediaPlayer;

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/c;->onStart()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :goto_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->a:Ljava/lang/String;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/i/b;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "viewBinding"

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->e:Z

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userVoiceFile.path"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->d:Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;->fileName:Landroid/widget/EditText;

    invoke-static {v1}, Lcn/mucang/android/core/utils/m;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;->audition:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;->delete:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 9
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_3
    :goto_0
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;->closeIv:Landroid/widget/ImageView;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/h;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/h;-><init>(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;

    if-eqz v1, :cond_8

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;->selectFile:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/n;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/n;-><init>(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;->delete:Landroid/widget/LinearLayout;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/i;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/i;-><init>(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;->cancelTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/l;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/l;-><init>(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;->audition:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/m;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/m;-><init>(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;

    if-eqz v1, :cond_4

    iget-object p2, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSelectVoiceBinding;->confirmTv:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/j;

    invoke-direct {v0, p0, p1}, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/j;-><init>(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/q;Ljava/io/File;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 17
    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 18
    :cond_6
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 19
    :cond_7
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 20
    :cond_8
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 21
    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2
.end method
