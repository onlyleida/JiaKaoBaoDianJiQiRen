.class public final Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBackupBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00132\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0013B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0014R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBackupBinding;",
        "()V",
        "examSiteId",
        "",
        "getExamSiteId",
        "()J",
        "examSiteId$delegate",
        "Lkotlin/Lazy;",
        "keMu",
        "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
        "getKeMu",
        "()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
        "keMu$delegate",
        "getStatName",
        "",
        "init",
        "",
        "Companion",
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
.field public static final d:Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity$a;


# instance fields
.field private final b:Lkotlin/f;

.field private final c:Lkotlin/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;->d:Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity$keMu$2;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity$keMu$2;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;->b:Lkotlin/f;

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity$examSiteId$2;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity$examSiteId$2;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;->c:Lkotlin/f;

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;)Lcn/mucang/android/jiakaoyi/engine/model/KeMu;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;->l()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object p0

    return-object p0
.end method

.method private final l()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;->b:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    return-object v0
.end method

.method private static final m(Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final n(Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;Landroid/view/View;)V
    .locals 11

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->e:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion;

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;->k()J

    move-result-wide v2

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;->l()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object v5

    sget-object p1, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->RULE:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v6

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x60

    const/4 v10, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v10}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion;->d(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion;Landroid/content/Context;JZLcn/mucang/android/jiakaoyi/engine/model/KeMu;IZLf/a/a/a/j/c;ILjava/lang/Object;)V

    return-void
.end method

.method private static final o(Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;Landroid/view/View;)V
    .locals 11

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->e:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion;

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;->k()J

    move-result-wide v2

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;->l()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object v5

    sget-object p1, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->DEDUCT:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v6

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x60

    const/4 v10, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v10}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion;->d(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion;Landroid/content/Context;JZLcn/mucang/android/jiakaoyi/engine/model/KeMu;IZLf/a/a/a/j/c;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;->o(Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;->m(Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;->n(Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u89c4\u5219\u62a5\u5907"

    return-object v0
.end method

.method protected init()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBackupBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBackupBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u6263\u5206\u8bbe\u7f6e\u548c\u8bc4\u5224\u89c4\u5219\u62a5\u5907"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBackupBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBackupBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/backup/b;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/backup/b;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBackupBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBackupBinding;->ruleView:Landroid/view/View;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/backup/c;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/backup/c;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBackupBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityBackupBinding;->deductView:Landroid/view/View;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/backup/a;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/backup/a;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final k()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/backup/BackupActivity;->c:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
