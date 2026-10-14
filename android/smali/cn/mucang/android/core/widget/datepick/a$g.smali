.class public Lcn/mucang/android/core/widget/datepick/a$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/widget/datepick/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Lcn/mucang/android/core/widget/datepick/a$h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcn/mucang/android/core/widget/datepick/a;
    .locals 5

    .line 1
    iget v0, p0, Lcn/mucang/android/core/widget/datepick/a$g;->a:I

    iget v1, p0, Lcn/mucang/android/core/widget/datepick/a$g;->b:I

    iget-object v2, p0, Lcn/mucang/android/core/widget/datepick/a$g;->c:Ljava/lang/String;

    iget-wide v3, p0, Lcn/mucang/android/core/widget/datepick/a$g;->d:J

    invoke-static {v0, v1, v2, v3, v4}, Lcn/mucang/android/core/widget/datepick/a;->I(IILjava/lang/String;J)Lcn/mucang/android/core/widget/datepick/a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/core/widget/datepick/a$g;->e:Lcn/mucang/android/core/widget/datepick/a$h;

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/widget/datepick/a;->K(Lcn/mucang/android/core/widget/datepick/a$h;)V

    return-object v0
.end method

.method public b(Lcn/mucang/android/core/widget/datepick/a$h;)Lcn/mucang/android/core/widget/datepick/a$g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/widget/datepick/a$g;->e:Lcn/mucang/android/core/widget/datepick/a$h;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcn/mucang/android/core/widget/datepick/a$g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/widget/datepick/a$g;->c:Ljava/lang/String;

    return-object p0
.end method

.method public d(J)Lcn/mucang/android/core/widget/datepick/a$g;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/core/widget/datepick/a$g;->d:J

    return-object p0
.end method
