.class public Lcn/mucang/android/jiakaoyi/signal/center/model/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/signal/c/g/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/c/g/b;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->a:Lcn/mucang/android/jiakaoyi/signal/c/g/b;

    return-void
.end method

.method public static a(Lcn/mucang/android/jiakaoyi/signal/center/model/c;Lcn/mucang/android/jiakaoyi/signal/center/model/c;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->a:Lcn/mucang/android/jiakaoyi/signal/c/g/b;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->a:Lcn/mucang/android/jiakaoyi/signal/c/g/b;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->a(Lcn/mucang/android/jiakaoyi/signal/c/g/b;)V

    return-void
.end method


# virtual methods
.method public b()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->a:Lcn/mucang/android/jiakaoyi/signal/c/g/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->b:Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->a:J

    return-wide v0
.end method

.method public c(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->a:Lcn/mucang/android/jiakaoyi/signal/c/g/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->d:[Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    aget-object p1, v0, p1

    return-object p1
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->a:Lcn/mucang/android/jiakaoyi/signal/c/g/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->c:[Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->a:Lcn/mucang/android/jiakaoyi/signal/c/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->b()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->a:Lcn/mucang/android/jiakaoyi/signal/c/g/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->b:Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/c/g/b$a;->i()V

    return-void
.end method

.method public g(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->a:Lcn/mucang/android/jiakaoyi/signal/c/g/b;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/c/g/b;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)V

    return-void
.end method
