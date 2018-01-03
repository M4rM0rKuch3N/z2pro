.class public final Lcom/android/server/display/NightDisplayService;
.super Lcom/android/server/SystemService;
.source "NightDisplayService.java"

# interfaces
.implements Lcom/android/internal/app/NightDisplayController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/NightDisplayService$1;,
        Lcom/android/server/display/NightDisplayService$AutoMode;,
        Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;,
        Lcom/android/server/display/NightDisplayService$CustomAutoMode;,
        Lcom/android/server/display/NightDisplayService$TwilightAutoMode;
    }
.end annotation


# static fields
.field private static final COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;

.field private static final DEBUG:Z = false

.field private static final MATRIX_IDENTITY:[F

.field private static final MATRIX_NIGHT:[F

.field private static final TAG:Ljava/lang/String; = "NightDisplayService"


# instance fields
.field private autoVal:F

.field private customVal:I

.field private mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

.field private mAutomaticBrightness:Z

.field private mBootCompleted:Z

.field private mColorMatrixAnimator:Landroid/animation/ValueAnimator;

.field private mController:Lcom/android/internal/app/NightDisplayController;

.field private mCurrentUser:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIgnoreAllColorMatrixChanges:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsActivated:Ljava/lang/Boolean;

.field private mUserSetupObserver:Landroid/database/ContentObserver;

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field private manualVal:I


# direct methods
.method static synthetic -get0()[F
    .locals 1

    sget-object v0, Lcom/android/server/display/NightDisplayService;->MATRIX_IDENTITY:[F

    return-object v0
.end method

.method static synthetic -get1()[F
    .locals 1

    sget-object v0, Lcom/android/server/display/NightDisplayService;->MATRIX_NIGHT:[F

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/display/NightDisplayService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/NightDisplayService;->manualVal:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/display/NightDisplayService;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/NightDisplayService;->autoVal:F

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/display/NightDisplayService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/NightDisplayService;->mBootCompleted:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/display/NightDisplayService;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/display/NightDisplayService;)Lcom/android/internal/app/NightDisplayController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/display/NightDisplayService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/display/NightDisplayService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/display/NightDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mIgnoreAllColorMatrixChanges:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/display/NightDisplayService;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/display/NightDisplayService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/NightDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/content/ContentResolver;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userHandle"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/display/NightDisplayService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/display/NightDisplayService;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/display/NightDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/display/NightDisplayService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService;->setUp()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 73
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/display/NightDisplayService;->MATRIX_NIGHT:[F

    .line 83
    new-array v0, v1, [F

    sput-object v0, Lcom/android/server/display/NightDisplayService;->MATRIX_IDENTITY:[F

    .line 85
    sget-object v0, Lcom/android/server/display/NightDisplayService;->MATRIX_IDENTITY:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 91
    new-instance v0, Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;-><init>(Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;)V

    sput-object v0, Lcom/android/server/display/NightDisplayService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;

    .line 64
    return-void

    .line 73
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f410625    # 0.754f
        0x0
        0x0
        0x0
        0x0
        0x3f041893    # 0.516f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mIgnoreAllColorMatrixChanges:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 95
    new-instance v0, Lcom/android/server/display/NightDisplayService$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/NightDisplayService$1;-><init>(Lcom/android/server/display/NightDisplayService;)V

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 120
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    .line 136
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mHandler:Landroid/os/Handler;

    .line 134
    return-void
.end method

.method private static isUserSetupCompleted(Landroid/content/ContentResolver;I)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userHandle"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 229
    const-string/jumbo v2, "user_setup_complete"

    invoke-static {p0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private onUserChanged(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v2, -0x2710

    .line 192
    invoke-virtual {p0}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 194
    .local v0, "cr":Landroid/content/ContentResolver;
    iget v1, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    if-eq v1, v2, :cond_0

    .line 195
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_2

    .line 196
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 197
    iput-object v3, p0, Lcom/android/server/display/NightDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 203
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    .line 205
    iget v1, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    if-eq v1, v2, :cond_1

    .line 206
    iget v1, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    invoke-static {v0, v1}, Lcom/android/server/display/NightDisplayService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 207
    new-instance v1, Lcom/android/server/display/NightDisplayService$2;

    iget-object v2, p0, Lcom/android/server/display/NightDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/display/NightDisplayService$2;-><init>(Lcom/android/server/display/NightDisplayService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/server/display/NightDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 220
    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 221
    iget-object v2, p0, Lcom/android/server/display/NightDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    const/4 v4, 0x0

    .line 220
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 191
    :cond_1
    :goto_1
    return-void

    .line 198
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/display/NightDisplayService;->mBootCompleted:Z

    if-eqz v1, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService;->tearDown()V

    goto :goto_0

    .line 222
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/display/NightDisplayService;->mBootCompleted:Z

    if-eqz v1, :cond_1

    .line 223
    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService;->setUp()V

    goto :goto_1
.end method

.method private setBrightness(Z)V
    .locals 5
    .param p1, "activated"    # Z

    .prologue
    .line 337
    if-eqz p1, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/android/server/display/NightDisplayService;->updateBrightnessModeValues()V

    .line 340
    :cond_0
    iget v2, p0, Lcom/android/server/display/NightDisplayService;->customVal:I

    if-nez v2, :cond_1

    .line 341
    return-void

    .line 345
    :cond_1
    :try_start_0
    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 344
    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 346
    .local v1, "power":Landroid/os/IPowerManager;
    if-eqz v1, :cond_2

    .line 347
    iget-boolean v2, p0, Lcom/android/server/display/NightDisplayService;->mAutomaticBrightness:Z

    if-eqz v2, :cond_3

    .line 348
    iget v2, p0, Lcom/android/server/display/NightDisplayService;->autoVal:F

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    .line 349
    new-instance v2, Lcom/android/server/display/NightDisplayService$5;

    invoke-direct {v2, p0, p1}, Lcom/android/server/display/NightDisplayService$5;-><init>(Lcom/android/server/display/NightDisplayService;Z)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 336
    .end local v1    # "power":Landroid/os/IPowerManager;
    :cond_2
    :goto_0
    return-void

    .line 365
    .restart local v1    # "power":Landroid/os/IPowerManager;
    :cond_3
    iget v2, p0, Lcom/android/server/display/NightDisplayService;->manualVal:I

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 366
    new-instance v2, Lcom/android/server/display/NightDisplayService$6;

    invoke-direct {v2, p0, p1}, Lcom/android/server/display/NightDisplayService$6;-><init>(Lcom/android/server/display/NightDisplayService;Z)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 384
    .end local v1    # "power":Landroid/os/IPowerManager;
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NightDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setting Brightness failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setUp()V
    .locals 3

    .prologue
    .line 233
    const-string/jumbo v0, "NightDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUp: currentUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v0, Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {p0}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    .line 237
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    .line 240
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/NightDisplayService;->onAutoModeChanged(I)V

    .line 243
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/NightDisplayService;->onActivated(Z)V

    .line 232
    :cond_0
    return-void
.end method

.method private tearDown()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 249
    const-string/jumbo v0, "NightDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tearDown: currentUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    .line 253
    iput-object v3, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/display/NightDisplayService$AutoMode;->onStop()V

    .line 258
    iput-object v3, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 263
    iput-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    .line 266
    :cond_2
    iput-object v3, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    .line 248
    return-void
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 8
    .param p1, "activated"    # Z

    .prologue
    .line 271
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v4, p1, :cond_6

    .line 272
    :cond_0
    const-string/jumbo v5, "NightDisplayService"

    if-eqz p1, :cond_3

    const-string/jumbo v4, "Turning on night display"

    :goto_0
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v2, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    .line 276
    .local v2, "isReboot":Ljava/lang/Boolean;
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    if-eqz v4, :cond_1

    .line 277
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    invoke-virtual {v4, p1}, Lcom/android/server/display/NightDisplayService$AutoMode;->onActivated(Z)V

    .line 280
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    .line 283
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_2

    .line 284
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 288
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService;->mIgnoreAllColorMatrixChanges:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 289
    return-void

    .line 272
    .end local v2    # "isReboot":Ljava/lang/Boolean;
    :cond_3
    const-string/jumbo v4, "Turning off night display"

    goto :goto_0

    .line 292
    .restart local v2    # "isReboot":Ljava/lang/Boolean;
    :cond_4
    const-class v4, Lcom/android/server/display/DisplayTransformManager;

    invoke-virtual {p0, v4}, Lcom/android/server/display/NightDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayTransformManager;

    .line 293
    .local v0, "dtm":Lcom/android/server/display/DisplayTransformManager;
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayTransformManager;->getColorMatrix(I)[F

    move-result-object v1

    .line 294
    .local v1, "from":[F
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v3, Lcom/android/server/display/NightDisplayService;->MATRIX_NIGHT:[F

    .line 296
    :goto_1
    sget-object v5, Lcom/android/server/display/NightDisplayService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Object;

    .line 297
    if-nez v1, :cond_5

    sget-object v1, Lcom/android/server/display/NightDisplayService;->MATRIX_IDENTITY:[F

    .end local v1    # "from":[F
    :cond_5
    const/4 v4, 0x0

    aput-object v1, v6, v4

    if-nez v3, :cond_8

    sget-object v4, Lcom/android/server/display/NightDisplayService;->MATRIX_IDENTITY:[F

    :goto_2
    const/4 v7, 0x1

    aput-object v4, v6, v7

    .line 296
    invoke-static {v5, v6}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    .line 298
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 299
    const v6, 0x10e0002

    .line 298
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 300
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    .line 301
    invoke-virtual {p0}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10c000d

    .line 300
    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 302
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/server/display/NightDisplayService$3;

    invoke-direct {v5, p0, v0}, Lcom/android/server/display/NightDisplayService$3;-><init>(Lcom/android/server/display/NightDisplayService;Lcom/android/server/display/DisplayTransformManager;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 309
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/server/display/NightDisplayService$4;

    invoke-direct {v5, p0, v0, v3}, Lcom/android/server/display/NightDisplayService$4;-><init>(Lcom/android/server/display/NightDisplayService;Lcom/android/server/display/DisplayTransformManager;[F)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 329
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 330
    if-eqz v2, :cond_6

    .line 331
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/display/NightDisplayService;->setBrightness(Z)V

    .line 270
    .end local v0    # "dtm":Lcom/android/server/display/DisplayTransformManager;
    .end local v2    # "isReboot":Ljava/lang/Boolean;
    :cond_6
    return-void

    .line 294
    .restart local v0    # "dtm":Lcom/android/server/display/DisplayTransformManager;
    .restart local v1    # "from":[F
    .restart local v2    # "isReboot":Ljava/lang/Boolean;
    :cond_7
    const/4 v3, 0x0

    .local v3, "to":[F
    goto :goto_1

    .end local v1    # "from":[F
    .end local v3    # "to":[F
    :cond_8
    move-object v4, v3

    .line 297
    goto :goto_2
.end method

.method public onAutoModeChanged(I)V
    .locals 4
    .param p1, "autoMode"    # I

    .prologue
    const/4 v3, 0x0

    .line 430
    const-string/jumbo v0, "NightDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAutoModeChanged: autoMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/display/NightDisplayService$AutoMode;->onStop()V

    .line 434
    iput-object v3, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    .line 437
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 438
    new-instance v0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;-><init>(Lcom/android/server/display/NightDisplayService;)V

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    .line 443
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    if-eqz v0, :cond_2

    .line 444
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/display/NightDisplayService$AutoMode;->onStart()V

    .line 429
    :cond_2
    return-void

    .line 439
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 440
    new-instance v0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;-><init>(Lcom/android/server/display/NightDisplayService;)V

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    goto :goto_0
.end method

.method public onBootPhase(I)V
    .locals 5
    .param p1, "phase"    # I

    .prologue
    .line 146
    const/16 v2, 0x1f4

    if-ne p1, v2, :cond_1

    .line 148
    const-string/jumbo v2, "vrmanager"

    invoke-virtual {p0, v2}, Lcom/android/server/display/NightDisplayService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Landroid/service/vr/IVrManager;

    .line 149
    .local v1, "vrManager":Landroid/service/vr/IVrManager;
    if-eqz v1, :cond_0

    .line 151
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/NightDisplayService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v1, v2}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v1    # "vrManager":Landroid/service/vr/IVrManager;
    :cond_0
    :goto_0
    return-void

    .line 152
    .restart local v1    # "vrManager":Landroid/service/vr/IVrManager;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NightDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to register VR mode state listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "vrManager":Landroid/service/vr/IVrManager;
    :cond_1
    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_0

    .line 157
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/NightDisplayService;->mBootCompleted:Z

    .line 160
    iget v2, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/display/NightDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService;->setUp()V

    goto :goto_0
.end method

.method public onCustomEndTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .locals 3
    .param p1, "endTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    .prologue
    .line 459
    const-string/jumbo v0, "NightDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomEndTimeChanged: endTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/display/NightDisplayService$AutoMode;->onCustomEndTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V

    .line 458
    :cond_0
    return-void
.end method

.method public onCustomStartTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .locals 3
    .param p1, "startTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    .prologue
    .line 450
    const-string/jumbo v0, "NightDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomStartTimeChanged: startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/display/NightDisplayService$AutoMode;->onCustomStartTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V

    .line 449
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public onStartUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStartUser(I)V

    .line 170
    iget v0, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 171
    invoke-direct {p0, p1}, Lcom/android/server/display/NightDisplayService;->onUserChanged(I)V

    .line 167
    :cond_0
    return-void
.end method

.method public onStopUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStopUser(I)V

    .line 186
    iget v0, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    if-ne v0, p1, :cond_0

    .line 187
    const/16 v0, -0x2710

    invoke-direct {p0, v0}, Lcom/android/server/display/NightDisplayService;->onUserChanged(I)V

    .line 183
    :cond_0
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 0
    .param p1, "userHandle"    # I

    .prologue
    .line 177
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V

    .line 179
    invoke-direct {p0, p1}, Lcom/android/server/display/NightDisplayService;->onUserChanged(I)V

    .line 176
    return-void
.end method

.method public updateBrightnessModeValues()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v6, -0x2

    .line 390
    invoke-virtual {p0}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 391
    const-string/jumbo v5, "screen_auto_brightness_adj"

    .line 390
    invoke-static {v3, v5, v7, v6}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 393
    .local v0, "getUserAutoVal":F
    invoke-virtual {p0}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 394
    const-string/jumbo v5, "night_autobrightness_uservalue"

    .line 393
    invoke-static {v3, v5, v0, v6}, Landroid/provider/Settings$Secure;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 396
    invoke-virtual {p0}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 397
    const-string/jumbo v5, "screen_brightness"

    .line 396
    invoke-static {v3, v5, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 399
    .local v1, "getUserManualVal":I
    invoke-virtual {p0}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 400
    const-string/jumbo v5, "night_manbrightness_uservalue"

    .line 399
    invoke-static {v3, v5, v1, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 402
    invoke-virtual {p0}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 403
    const-string/jumbo v5, "screen_brightness_mode"

    .line 402
    invoke-static {v3, v5, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 406
    .local v2, "mode":I
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/display/NightDisplayService;->mAutomaticBrightness:Z

    .line 407
    invoke-virtual {p0}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 408
    const-string/jumbo v5, "qs_night_brightness_value"

    .line 407
    invoke-static {v3, v5, v4, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/NightDisplayService;->customVal:I

    .line 410
    iget v3, p0, Lcom/android/server/display/NightDisplayService;->customVal:I

    packed-switch v3, :pswitch_data_0

    .line 389
    :goto_1
    return-void

    :cond_0
    move v3, v4

    .line 406
    goto :goto_0

    .line 412
    :pswitch_0
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/android/server/display/NightDisplayService;->autoVal:F

    .line 413
    iput v4, p0, Lcom/android/server/display/NightDisplayService;->manualVal:I

    goto :goto_1

    .line 416
    :pswitch_1
    const v3, -0x41570a3d    # -0.33f

    iput v3, p0, Lcom/android/server/display/NightDisplayService;->autoVal:F

    .line 417
    const/16 v3, 0x28

    iput v3, p0, Lcom/android/server/display/NightDisplayService;->manualVal:I

    goto :goto_1

    .line 420
    :pswitch_2
    iput v7, p0, Lcom/android/server/display/NightDisplayService;->autoVal:F

    .line 421
    const/16 v3, 0x64

    iput v3, p0, Lcom/android/server/display/NightDisplayService;->manualVal:I

    goto :goto_1

    .line 410
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
