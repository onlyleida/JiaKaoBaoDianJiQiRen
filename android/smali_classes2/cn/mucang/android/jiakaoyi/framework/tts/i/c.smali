.class public Lcn/mucang/android/jiakaoyi/framework/tts/i/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcn/mucang/android/jiakaoyi/framework/tts/i/c;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->b:Ljava/lang/String;

    return-void
.end method

.method public static d()Lcn/mucang/android/jiakaoyi/framework/tts/i/c;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->c:Lcn/mucang/android/jiakaoyi/framework/tts/i/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->c:Lcn/mucang/android/jiakaoyi/framework/tts/i/c;

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->c:Lcn/mucang/android/jiakaoyi/framework/tts/i/c;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->a:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->b:Ljava/lang/String;

    const-string v0, "enable_pack"

    const-string v1, ""

    .line 3
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "enable_pack_name"

    .line 4
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Long;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u542f\u7528\u8bed\u97f3\u5305 name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ; packId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ; version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->a:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->b:Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "enable_pack"

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->b:Ljava/lang/String;

    const-string p2, "enable_pack_name"

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()Ljava/io/File;
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "enable_pack"

    const-string v1, ""

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->a:Ljava/lang/String;

    .line 3
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/i/b;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public e(JI)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->a:Ljava/lang/String;

    const-string v1, ""

    const-string v2, "enable_pack"

    if-nez v0, :cond_0

    .line 2
    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->a:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    return v3

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-static {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/framework/tts/i/b;->i(JI)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->a:Ljava/lang/String;

    .line 7
    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v3
.end method
