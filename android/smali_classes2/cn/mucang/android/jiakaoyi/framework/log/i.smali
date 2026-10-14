.class public Lcn/mucang/android/jiakaoyi/framework/log/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:Lcn/mucang/android/jiakaoyi/framework/log/i;

.field public static final j:Lcn/mucang/android/jiakaoyi/framework/log/i;

.field public static final k:Lcn/mucang/android/jiakaoyi/framework/log/i;

.field public static final l:Lcn/mucang/android/jiakaoyi/framework/log/i;

.field public static final m:Lcn/mucang/android/jiakaoyi/framework/log/i;

.field public static final n:Lcn/mucang/android/jiakaoyi/framework/log/i;

.field public static final o:Lcn/mucang/android/jiakaoyi/framework/log/i;

.field public static final p:Lcn/mucang/android/jiakaoyi/framework/log/i;

.field public static final q:Lcn/mucang/android/jiakaoyi/framework/log/i;

.field public static final r:Lcn/mucang/android/jiakaoyi/framework/log/i;

.field public static final s:Lcn/mucang/android/jiakaoyi/framework/log/i;

.field public static final t:Lcn/mucang/android/jiakaoyi/framework/log/i;

.field public static final u:Lcn/mucang/android/jiakaoyi/framework/log/i;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Ljava/lang/String;

.field public final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v9, Lcn/mucang/android/jiakaoyi/framework/log/i;

    const/4 v1, 0x1

    const-string v2, "\u901a\u7528"

    const-string v3, "normal"

    const-string v4, "txt"

    const v5, 0x927c0

    const/high16 v6, 0x200000

    const/high16 v7, 0x1e00000

    const/4 v8, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/framework/log/i;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    sput-object v9, Lcn/mucang/android/jiakaoyi/framework/log/i;->i:Lcn/mucang/android/jiakaoyi/framework/log/i;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/log/i;

    const/4 v11, 0x2

    const-string v12, "\u901a\u4fe1\u8fde\u63a5"

    const-string v13, "com"

    const-string v14, "txt"

    const v15, 0x927c0

    const/high16 v16, 0x200000

    const/high16 v17, 0x1e00000

    const/16 v18, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcn/mucang/android/jiakaoyi/framework/log/i;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/log/i;->j:Lcn/mucang/android/jiakaoyi/framework/log/i;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/log/i;

    const/4 v2, 0x3

    const-string v3, "\u9ad8\u7cbe\u5ea6"

    const-string v4, "hp"

    const-string v5, "txt"

    const v6, 0x927c0

    const/high16 v7, 0x200000

    const/high16 v8, 0x1e00000

    const/4 v9, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/framework/log/i;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/log/i;->k:Lcn/mucang/android/jiakaoyi/framework/log/i;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/log/i;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->n()Z

    move-result v18

    const/4 v11, 0x4

    const-string v12, "\u56fa\u4ef6\u4fe1\u53f7"

    const-string v13, "signal"

    const-string v14, "txt"

    const v15, 0x493e0

    const/high16 v17, 0x12c00000

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcn/mucang/android/jiakaoyi/framework/log/i;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/log/i;->l:Lcn/mucang/android/jiakaoyi/framework/log/i;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/log/i;

    const/4 v2, 0x5

    const-string v3, "\u5239\u8f66"

    const-string v4, "brake"

    const-string v5, "txt"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/framework/log/i;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/log/i;->m:Lcn/mucang/android/jiakaoyi/framework/log/i;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/log/i;

    const/4 v11, 0x6

    const-string v12, "Rtcm"

    const-string v13, "rtcm_server"

    const-string v14, "txt"

    const v15, 0x927c0

    const/high16 v17, 0x1e00000

    const/16 v18, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcn/mucang/android/jiakaoyi/framework/log/i;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/log/i;->n:Lcn/mucang/android/jiakaoyi/framework/log/i;

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/log/i;

    const/4 v2, 0x7

    const-string v3, "\u5239\u8f66\u6570\u636e"

    const-string v4, "brake_data"

    const-string v5, "txt"

    const/high16 v8, 0x6400000

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/framework/log/i;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/log/i;->o:Lcn/mucang/android/jiakaoyi/framework/log/i;

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/log/i;

    const/16 v11, 0x8

    const-string v12, "\u81ea\u52a8\u9a7e\u9a76"

    const-string v13, "ap"

    const-string v14, "txt"

    const v15, 0x124f80

    const/high16 v17, 0xa00000

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcn/mucang/android/jiakaoyi/framework/log/i;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/log/i;->p:Lcn/mucang/android/jiakaoyi/framework/log/i;

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/log/i;

    const/16 v2, 0xa

    const-string v3, "\u81ea\u52a8\u9a7e\u9a76\u8f68\u8ff9"

    const-string v4, "at"

    const-string v5, "txt"

    const v6, 0x124f80

    const/high16 v8, 0xa00000

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/framework/log/i;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/log/i;->q:Lcn/mucang/android/jiakaoyi/framework/log/i;

    .line 10
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/log/i;

    const/16 v11, 0x14

    const-string v12, "\u7f51\u7edc\u72b6\u6001"

    const-string v13, "ping"

    const-string v14, "txt"

    const v15, 0x927c0

    const/high16 v17, 0x6400000

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcn/mucang/android/jiakaoyi/framework/log/i;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/log/i;->r:Lcn/mucang/android/jiakaoyi/framework/log/i;

    .line 11
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/log/i;

    const/16 v2, 0x15

    const-string v3, "\u4eba\u8138\u767b\u5f55"

    const-string v4, "faceLogin"

    const-string v5, "txt"

    const v6, 0x927c0

    const/high16 v8, 0x6400000

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/framework/log/i;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/log/i;->s:Lcn/mucang/android/jiakaoyi/framework/log/i;

    .line 12
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/log/i;

    const/16 v11, 0x1f

    const-string v12, "GPS\u5206\u6790"

    const-string v13, "gps"

    const-string v14, "txt"

    const/high16 v17, 0xa00000

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcn/mucang/android/jiakaoyi/framework/log/i;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/log/i;->t:Lcn/mucang/android/jiakaoyi/framework/log/i;

    .line 13
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/log/i;

    const/16 v2, 0x2710

    const-string v3, "\u672c\u5730Debug"

    const-string v4, "debug"

    const-string v5, "txt"

    const v6, 0x1b7740

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/framework/log/i;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/log/i;->u:Lcn/mucang/android/jiakaoyi/framework/log/i;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/log/i;->a:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/framework/log/i;->b:Ljava/lang/String;

    .line 4
    iput p5, p0, Lcn/mucang/android/jiakaoyi/framework/log/i;->c:I

    .line 5
    iput p6, p0, Lcn/mucang/android/jiakaoyi/framework/log/i;->d:I

    .line 6
    iput p1, p0, Lcn/mucang/android/jiakaoyi/framework/log/i;->f:I

    .line 7
    iput p7, p0, Lcn/mucang/android/jiakaoyi/framework/log/i;->e:I

    .line 8
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/framework/log/i;->g:Ljava/lang/String;

    .line 9
    iput-boolean p8, p0, Lcn/mucang/android/jiakaoyi/framework/log/i;->h:Z

    return-void
.end method

.method public static b()[Lcn/mucang/android/jiakaoyi/framework/log/i;
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/framework/log/i;

    .line 1
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/log/i;->i:Lcn/mucang/android/jiakaoyi/framework/log/i;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/log/i;->j:Lcn/mucang/android/jiakaoyi/framework/log/i;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/log/i;->k:Lcn/mucang/android/jiakaoyi/framework/log/i;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/log/i;->l:Lcn/mucang/android/jiakaoyi/framework/log/i;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/log/i;->m:Lcn/mucang/android/jiakaoyi/framework/log/i;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/log/i;->n:Lcn/mucang/android/jiakaoyi/framework/log/i;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/log/i;->o:Lcn/mucang/android/jiakaoyi/framework/log/i;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/log/i;->p:Lcn/mucang/android/jiakaoyi/framework/log/i;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/log/i;->q:Lcn/mucang/android/jiakaoyi/framework/log/i;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/log/i;->u:Lcn/mucang/android/jiakaoyi/framework/log/i;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/log/i;->r:Lcn/mucang/android/jiakaoyi/framework/log/i;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/log/i;->s:Lcn/mucang/android/jiakaoyi/framework/log/i;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/log/i;->t:Lcn/mucang/android/jiakaoyi/framework/log/i;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/log/i;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
