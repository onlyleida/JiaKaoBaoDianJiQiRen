.class public Lcn/mucang/android/jiakaoyi/teachingk2/v0/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x0

.field public static b:I = 0x1

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(ZI)V
    .locals 1

    .line 1
    sput p1, Lcn/mucang/android/jiakaoyi/teachingk2/v0/e/a;->c:I

    if-eqz p0, :cond_1

    .line 2
    sget p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/e/a;->b:I

    if-ne p1, p0, :cond_0

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object p0

    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Line:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->k(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;)V

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->c()V

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object p0

    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Line:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/c;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->a(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;)V

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object p0

    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Left:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/b;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->a(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;)V

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object p0

    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Right:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/d;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->a(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->d()V

    :goto_0
    return-void
.end method

.method public static b()Z
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/e/a;->c:I

    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/v0/e/a;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
