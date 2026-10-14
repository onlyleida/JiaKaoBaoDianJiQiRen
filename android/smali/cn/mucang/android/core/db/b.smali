.class public Lcn/mucang/android/core/db/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lcn/mucang/android/core/db/a$b;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcn/mucang/android/core/db/a;
    .locals 7

    .line 1
    new-instance v6, Lcn/mucang/android/core/db/a;

    iget-object v1, p0, Lcn/mucang/android/core/db/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/core/db/b;->b:Ljava/lang/String;

    iget v3, p0, Lcn/mucang/android/core/db/b;->c:I

    iget-object v4, p0, Lcn/mucang/android/core/db/b;->e:Landroid/content/Context;

    iget-object v5, p0, Lcn/mucang/android/core/db/b;->d:Lcn/mucang/android/core/db/a$b;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/core/db/a;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcn/mucang/android/core/db/a$b;)V

    return-object v6
.end method

.method public b(Lcn/mucang/android/core/db/a$b;)Lcn/mucang/android/core/db/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/db/b;->d:Lcn/mucang/android/core/db/a$b;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcn/mucang/android/core/db/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/db/b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcn/mucang/android/core/db/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/db/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public e(I)Lcn/mucang/android/core/db/b;
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/core/db/b;->c:I

    return-object p0
.end method
