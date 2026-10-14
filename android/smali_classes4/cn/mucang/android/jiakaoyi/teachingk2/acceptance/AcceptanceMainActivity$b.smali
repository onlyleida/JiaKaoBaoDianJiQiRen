.class public final Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u001e\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity$Companion;",
        "",
        "()V",
        "keyWorkOrderId",
        "",
        "launch",
        "",
        "context",
        "Landroid/content/Context;",
        "showWorkList",
        "list",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/WorkOrderModel;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity$b;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity$b;->h(Landroid/content/Context;Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity$b;->f(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity$b;->e(Landroid/content/Context;)V

    return-void
.end method

.method private static final e(Landroid/content/Context;)V
    .locals 2

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/v;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/v;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/v;->o()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/o;

    invoke-direct {v1, p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/o;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final f(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity$b;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity$b;->g(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private final g(Landroid/content/Context;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/WorkOrderModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p2, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    new-instance v8, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    const-string v1, "\u672a\u67e5\u8be2\u5230\u5de5\u5355\u4fe1\u606f"

    const-string v2, "\u8bf7\u5b8c\u6210\u5de5\u5355\u7684\u5b9e\u65bd\u8f66\u8f86\u6dfb\u52a0"

    const-string v3, "\u5173\u95ed"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ILkotlin/jvm/internal/o;)V

    invoke-direct {p2, p1, v8}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;)V

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->show()V

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p2}, Lkotlin/collections/s;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/WorkOrderModel;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/WorkOrderModel;->getWorkOrderId()J

    move-result-wide v1

    const-string p2, "key.workOrderId"

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "Intent(context, Acceptan\u2026list.first().workOrderId)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/utils/l;->c(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 5
    :cond_1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;-><init>()V

    const-string v1, "\u5de5\u5355\u9009\u62e9"

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;->b(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 8
    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/WorkOrderModel;

    .line 9
    new-instance v4, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5de5\u5355\u3010"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/WorkOrderModel;->getWorkOrderId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x3011

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/n;

    invoke-direct {v5, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/n;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-direct {v4, v3, v5}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$c;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$b;)V

    .line 10
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    new-instance p2, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;

    invoke-direct {p2, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/JListDialog$d;Ljava/util/List;)V

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 13
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 14
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    :goto_1
    return-void
.end method

.method private static final h(Landroid/content/Context;Ljava/util/List;I)V
    .locals 2

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/WorkOrderModel;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/WorkOrderModel;->getWorkOrderId()J

    move-result-wide p1

    const-string v1, "key.workOrderId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "Intent(context, Acceptan\u2026Id, list[it].workOrderId)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/l;->c(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/content/Context;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    const-string p1, "\u672a\u542f\u7528\u8003\u573a"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    sget-object v2, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0$a;

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0$a;->a(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "\u6682\u65e0\u5730\u56fe\u6570\u636e"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/l;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/p;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/p;-><init>(Landroid/content/Context;)V

    const-string p1, "\u6b63\u5728\u83b7\u53d6\u5de5\u5355"

    const-string v2, "\u83b7\u53d6\u5931\u8d25"

    invoke-virtual {v0, v1, p1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
