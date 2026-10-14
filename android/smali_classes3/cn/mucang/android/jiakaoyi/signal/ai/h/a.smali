.class public Lcn/mucang/android/jiakaoyi/signal/ai/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ai__protocol_version"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->f(Ljava/lang/String;I)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/ai/h/a;->a:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    return-void
.end method

.method public static a()Z
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/ai/h/a;->a:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static b()Z
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/ai/h/a;->a:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static c(I)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/ai/h/a;->a:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "aiProtocolVersion"

    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/e/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
