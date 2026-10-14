.class public Lcn/mucang/jiakaoyi/uilib/message/dialog/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/message/dialog/f;


# instance fields
.field private final a:Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;

.field private final b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

.field private final c:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;->getConfig()Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 3
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;->getConfig()Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;->getButtonConfig()Ljava/util/List;

    move-result-object v5

    .line 5
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;->isCloseable()Z

    move-result v6

    if-eqz v5, :cond_2

    .line 6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 7
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;

    .line 8
    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;->getName()Ljava/lang/String;

    move-result-object v7

    .line 9
    new-instance v8, Lcn/mucang/jiakaoyi/uilib/message/dialog/a;

    invoke-direct {v8, v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/message/dialog/a;-><init>(Lcn/mucang/jiakaoyi/uilib/message/dialog/g;Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;)V

    goto :goto_0

    :cond_0
    move-object v7, v4

    move-object v8, v7

    .line 10
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_1

    .line 11
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;

    .line 12
    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;->getName()Ljava/lang/String;

    move-result-object v5

    .line 13
    new-instance v9, Lcn/mucang/jiakaoyi/uilib/message/dialog/b;

    invoke-direct {v9, v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/message/dialog/b;-><init>(Lcn/mucang/jiakaoyi/uilib/message/dialog/g;Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;)V

    goto :goto_1

    :cond_1
    move-object v5, v4

    move-object v9, v5

    goto :goto_1

    :cond_2
    move-object v5, v4

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    :goto_1
    if-eqz v6, :cond_3

    .line 14
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;

    invoke-direct {v3}, Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;-><init>()V

    const-string v4, "\u5173\u95ed"

    .line 15
    invoke-virtual {v3, v4}, Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;->setName(Ljava/lang/String;)V

    const-string v4, "close"

    .line 16
    invoke-virtual {v3, v4}, Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;->setAction(Ljava/lang/String;)V

    .line 17
    new-instance v4, Lcn/mucang/jiakaoyi/uilib/message/dialog/c;

    invoke-direct {v4, v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/message/dialog/c;-><init>(Lcn/mucang/jiakaoyi/uilib/message/dialog/g;Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;)V

    :cond_3
    move-object/from16 v18, v4

    move-object v15, v5

    move/from16 v19, v6

    move-object v13, v7

    move-object v14, v8

    move-object/from16 v16, v9

    goto :goto_2

    :cond_4
    move-object v13, v4

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v18, v16

    const/16 v19, 0x0

    .line 18
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;->getContent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 19
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;->getContent()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_5
    const-string v2, ""

    :goto_3
    move-object v12, v2

    .line 20
    new-instance v2, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    new-instance v3, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    .line 21
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;->getTitle()Ljava/lang/String;

    move-result-object v11

    const/16 v17, 0x0

    move-object v10, v3

    invoke-direct/range {v10 .. v19}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;Z)V

    move-object/from16 v4, p1

    invoke-direct {v2, v4, v3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    iput-object v2, v0, Lcn/mucang/jiakaoyi/uilib/message/dialog/g;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 22
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;->getConfig()Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->s(Ljava/lang/String;)V

    .line 23
    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/message/dialog/g;->a:Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;

    move-object/from16 v1, p3

    .line 24
    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/message/dialog/g;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method

.method private d(Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;->isAutoConfirm()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    sget-object p2, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;->a:Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;->getMessageId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, v0}, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;->c(Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;Lkotlin/jvm/b/l;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/g;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic e(Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/message/dialog/g;->d(Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;)V

    return-void
.end method

.method private synthetic g(Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/message/dialog/g;->d(Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;)V

    return-void
.end method

.method private synthetic i(Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/message/dialog/g;->d(Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;)V

    return-void
.end method

.method static synthetic k(Lcn/mucang/jiakaoyi/uilib/message/dialog/e;Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/message/dialog/e;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/g;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/g;->a:Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;->getPriority()I

    move-result v0

    return v0
.end method

.method public c(Lcn/mucang/jiakaoyi/uilib/message/dialog/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/g;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/g;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/g;->b:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/message/dialog/d;

    invoke-direct {v1, p1}, Lcn/mucang/jiakaoyi/uilib/message/dialog/d;-><init>(Lcn/mucang/jiakaoyi/uilib/message/dialog/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/g;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/g;->a:Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic f(Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/jiakaoyi/uilib/message/dialog/g;->e(Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;Landroid/view/View;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/g;->a:Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;->getMessageId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h(Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/jiakaoyi/uilib/message/dialog/g;->g(Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;Landroid/view/View;)V

    return-void
.end method

.method public synthetic j(Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/jiakaoyi/uilib/message/dialog/g;->i(Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;Landroid/view/View;)V

    return-void
.end method
