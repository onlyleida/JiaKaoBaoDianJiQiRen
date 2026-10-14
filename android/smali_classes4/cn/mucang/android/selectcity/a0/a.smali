.class public Lcn/mucang/android/selectcity/a0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lcn/mucang/android/selectcity/Area;

.field private c:Lcn/mucang/android/selectcity/a0/b;

.field private d:I


# direct methods
.method public constructor <init>(Lcn/mucang/android/selectcity/Area;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcn/mucang/android/selectcity/a0/a;->a:I

    .line 3
    iput-object p1, p0, Lcn/mucang/android/selectcity/a0/a;->b:Lcn/mucang/android/selectcity/Area;

    .line 4
    iput p2, p0, Lcn/mucang/android/selectcity/a0/a;->d:I

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/selectcity/a0/b;I)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcn/mucang/android/selectcity/a0/a;->a:I

    .line 7
    iput-object p1, p0, Lcn/mucang/android/selectcity/a0/a;->c:Lcn/mucang/android/selectcity/a0/b;

    .line 8
    iput p2, p0, Lcn/mucang/android/selectcity/a0/a;->d:I

    return-void
.end method


# virtual methods
.method public a()Lcn/mucang/android/selectcity/Area;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/a0/a;->b:Lcn/mucang/android/selectcity/Area;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/selectcity/a0/a;->a:I

    return v0
.end method

.method public c()Lcn/mucang/android/selectcity/a0/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/a0/a;->c:Lcn/mucang/android/selectcity/a0/b;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/selectcity/a0/a;->d:I

    return v0
.end method
