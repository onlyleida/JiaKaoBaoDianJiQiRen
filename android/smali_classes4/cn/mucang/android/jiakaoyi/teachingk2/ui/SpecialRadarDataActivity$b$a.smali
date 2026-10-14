.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0017J*\u0010\u0013\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016H\u0016J*\u0010\u0019\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity$SpecialDataItemBinder$DisTextWatcher;",
        "Landroid/text/TextWatcher;",
        "item",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCoefficientModel;",
        "ed",
        "Landroid/widget/EditText;",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity$SpecialDataItemBinder;Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCoefficientModel;Landroid/widget/EditText;)V",
        "getEd",
        "()Landroid/widget/EditText;",
        "getItem",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCoefficientModel;",
        "runnable",
        "Ljava/lang/Runnable;",
        "getRunnable",
        "()Ljava/lang/Runnable;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
        "teachbase_release"
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
.field private final a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCoefficientModel;

.field private final b:Landroid/widget/EditText;

.field private final c:Ljava/lang/Runnable;

.field final synthetic d:Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity$b;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity$b;Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCoefficientModel;Landroid/widget/EditText;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCoefficientModel;",
            "Landroid/widget/EditText;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ed"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity$b$a;->d:Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity$b$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCoefficientModel;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity$b$a;->b:Landroid/widget/EditText;

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/v;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/v;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity$b$a;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity$b$a;->c:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity$b$a;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity$b$a;->c(Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity$b$a;)V

    return-void
.end method

.method private static final c(Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity$b$a;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity$b$a;->a()Landroid/widget/EditText;

    move-result-object p0

    const-string v0, "100"

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/EditText;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity$b$a;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity$b$a;->c:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    const/16 v0, 0x14

    if-le p1, v0, :cond_4

    const/16 v0, 0xc8

    if-le p1, v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity$b$a;->d:Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity$b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity$b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity;->k(Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity;)Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;->safeData:Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeFactorModel;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeFactorModel;->coefficients:[I

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity$b$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCoefficientModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCoefficientModel;->getIndex()I

    move-result v1

    aput p1, v0, v1

    :goto_1
    return-void

    :cond_4
    :goto_2
    const-string p1, "\u8bf7\u8f9320-200\u4e4b\u95f4\u7684\u6574\u6570"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity$b$a;->c:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-static {p1, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
