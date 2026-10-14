.class public final Lcn/mucang/sundial/library/util/KtxsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a\u001d\u0010\u0003\u001a\u00020\u0001*\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u001a%\u0010\n\u001a\u00020\u0008*\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00062\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u001a\u0013\u0010\r\u001a\u00020\u000c*\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000e\u001aA\u0010\u0018\u001a\u00020\u0016\"\u0008\u0008\u0000\u0010\u0010*\u00020\u000f*\u00020\u00112\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00122\u0016\u0008\u0002\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u001a%\u0010\u001d\u001a\u0004\u0018\u00010\u001a*\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u001d\u0010\u001e\u001a!\u0010\"\u001a\u00020\u0016*\u00020\u001f2\u0006\u0010 \u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\"\u0010#\u00a8\u0006$"
    }
    d2 = {
        "Lcn/mucang/sundial/library/entity/ServerCoachInfo;",
        "Lcn/mucang/sundial/android/db/entity/CoachInfo;",
        "coachInfo",
        "toCoachInfo",
        "(Lcn/mucang/sundial/library/entity/ServerCoachInfo;Lcn/mucang/sundial/android/db/entity/CoachInfo;)Lcn/mucang/sundial/android/db/entity/CoachInfo;",
        "Lcn/mucang/sundial/library/entity/ServerStudentInfo;",
        "",
        "courseSubject",
        "Lcn/mucang/sundial/android/db/entity/StudentInfo;",
        "studentInfo",
        "toStudentInfo",
        "(Lcn/mucang/sundial/library/entity/ServerStudentInfo;ILcn/mucang/sundial/android/db/entity/StudentInfo;)Lcn/mucang/sundial/android/db/entity/StudentInfo;",
        "",
        "isTrue",
        "(Ljava/lang/Boolean;)Z",
        "Landroid/app/Activity;",
        "T",
        "Landroid/content/Context;",
        "Ljava/lang/Class;",
        "clazz",
        "Lkotlin/Function1;",
        "Landroid/content/Intent;",
        "Lkotlin/v;",
        "intentInitializer",
        "safeStartActivity",
        "(Landroid/content/Context;Ljava/lang/Class;Lkotlin/jvm/b/l;)V",
        "",
        "startIndex",
        "maskLength",
        "mask",
        "(Ljava/lang/String;II)Ljava/lang/String;",
        "Landroid/widget/TextView;",
        "resId",
        "size",
        "setDrawableLeft",
        "(Landroid/widget/TextView;II)V",
        "library_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public static final isTrue(Ljava/lang/Boolean;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final mask(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "*"

    invoke-static {p1, p2}, Lkotlin/text/l;->t(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static final safeStartActivity(Landroid/content/Context;Ljava/lang/Class;Lkotlin/jvm/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Landroid/content/Intent;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$safeStartActivity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_0

    const/high16 p1, 0x10000000

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    invoke-interface {p2, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/v;

    .line 5
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic safeStartActivity$default(Landroid/content/Context;Ljava/lang/Class;Lkotlin/jvm/b/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1, p2}, Lcn/mucang/sundial/library/util/KtxsKt;->safeStartActivity(Landroid/content/Context;Ljava/lang/Class;Lkotlin/jvm/b/l;)V

    return-void
.end method

.method public static final setDrawableLeft(Landroid/widget/TextView;II)V
    .locals 1

    const-string v0, "$this$setDrawableLeft"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/a/a;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, v0, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p2, p2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static final toCoachInfo(Lcn/mucang/sundial/library/entity/ServerCoachInfo;Lcn/mucang/sundial/android/db/entity/CoachInfo;)Lcn/mucang/sundial/android/db/entity/CoachInfo;
    .locals 1

    const-string v0, "$this$toCoachInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Lcn/mucang/sundial/android/db/entity/CoachInfo;

    invoke-direct {p1}, Lcn/mucang/sundial/android/db/entity/CoachInfo;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->getGlobalCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->setCoachNo(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->setCoachName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->getCertificateCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->setIdCard(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->setAvatar(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->getTeachLicenceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->setTeachType(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->getDriveType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->setDriveType(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/sundial/library/entity/ServerCoachInfo;->getSchoolName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->setSchoolName(Ljava/lang/String;)V

    return-object p1
.end method

.method public static synthetic toCoachInfo$default(Lcn/mucang/sundial/library/entity/ServerCoachInfo;Lcn/mucang/sundial/android/db/entity/CoachInfo;ILjava/lang/Object;)Lcn/mucang/sundial/android/db/entity/CoachInfo;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Lcn/mucang/sundial/library/util/KtxsKt;->toCoachInfo(Lcn/mucang/sundial/library/entity/ServerCoachInfo;Lcn/mucang/sundial/android/db/entity/CoachInfo;)Lcn/mucang/sundial/android/db/entity/CoachInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final toStudentInfo(Lcn/mucang/sundial/library/entity/ServerStudentInfo;ILcn/mucang/sundial/android/db/entity/StudentInfo;)Lcn/mucang/sundial/android/db/entity/StudentInfo;
    .locals 2

    const-string v0, "$this$toStudentInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p2, Lcn/mucang/sundial/android/db/entity/StudentInfo;

    invoke-direct {p2}, Lcn/mucang/sundial/android/db/entity/StudentInfo;-><init>()V

    .line 2
    :goto_0
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    const-string v1, "SundialManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->getLastCoach()Lcn/mucang/sundial/android/db/entity/CoachInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getCoachNo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    invoke-virtual {p2, v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->setCoachNo(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/sundial/library/entity/ServerStudentInfo;->getGlobalCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->setStudentNo(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/sundial/library/entity/ServerStudentInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->setStudentName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/sundial/library/entity/ServerStudentInfo;->getCertificateCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->setIdCard(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/sundial/library/entity/ServerStudentInfo;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->setAvatar(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/sundial/library/entity/ServerStudentInfo;->getDriveLicence()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->setDriveLicence(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/sundial/library/entity/ServerStudentInfo;->getCoachTakePhoto()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->setCoachTakePhoto(I)V

    .line 10
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcn/mucang/sundial/library/entity/ServerStudentInfo;->getDriveLicence()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const-string p0, "C1"

    .line 12
    :goto_2
    sget-object v1, Lcn/mucang/sundial/library/util/SubjectUtil;->INSTANCE:Lcn/mucang/sundial/library/util/SubjectUtil;

    invoke-virtual {v1, p1}, Lcn/mucang/sundial/library/util/SubjectUtil;->index2Subject(I)I

    move-result p1

    .line 13
    invoke-virtual {v0, p0, p1}, Lcn/mucang/sundial/android/SundialManager;->createCourseCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->setCourseCode(Ljava/lang/String;)V

    return-object p2
.end method

.method public static synthetic toStudentInfo$default(Lcn/mucang/sundial/library/entity/ServerStudentInfo;ILcn/mucang/sundial/android/db/entity/StudentInfo;ILjava/lang/Object;)Lcn/mucang/sundial/android/db/entity/StudentInfo;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1, p2}, Lcn/mucang/sundial/library/util/KtxsKt;->toStudentInfo(Lcn/mucang/sundial/library/entity/ServerStudentInfo;ILcn/mucang/sundial/android/db/entity/StudentInfo;)Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object p0

    return-object p0
.end method
