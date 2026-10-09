```html
<!DOCTYPE html>
<html lang="ar" dir="rtl" class="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PulsePlayer - مشغل الموسيقى والفيديوهات الاحترافي</title>
    
    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        tailwind.config = {
            darkMode: 'class',
            theme: {
                extend: {
                    colors: {
                        brand: {
                            50: '#f0f3ff',
                            500: '#6366f1',
                            600: '#4f46e5',
                            700: '#4338ca',
                            accent: '#06b6d4',
                            neon: '#a855f7'
                        },
                        darkbg: '#080c14',
                    },
                    animation: {
                        'spin-slow': 'spin 12s linear infinite',
                        'pulse-glow': 'pulseGlow 2.5s ease-in-out infinite alternate',
                        'float': 'float 4s ease-in-out infinite',
                    },
                    keyframes: {
                        pulseGlow: {
                            '0%': { boxShadow: '0 0 15px rgba(168, 85, 247, 0.3), 0 0 30px rgba(99, 102, 241, 0.2)' },
                            '100%': { boxShadow: '0 0 30px rgba(6, 182, 212, 0.6), 0 0 50px rgba(168, 85, 247, 0.4)' }
                        },
                        float: {
                            '0%, 100%': { transform: 'translateY(0px)' },
                            '50%': { transform: 'translateY(-6px)' }
                        }
                    }
                }
            }
        }
    </script>
    
    <!-- Font Awesome Icons & Cairo Google Font -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@300;400;600;700;800;900&display=swap" rel="stylesheet">

    <style>
        * {
            font-family: 'Cairo', sans-serif;
            user-select: none;
            -webkit-user-drag: none;
        }

        /* Custom Scrollbars */
        ::-webkit-scrollbar {
            width: 6px;
            height: 6px;
        }
        ::-webkit-scrollbar-track {
            background: rgba(15, 23, 42, 0.6);
        }
        ::-webkit-scrollbar-thumb {
            background: rgba(99, 102, 241, 0.5);
            border-radius: 4px;
        }
        ::-webkit-scrollbar-thumb:hover {
            background: rgba(168, 85, 247, 0.8);
        }

        /* Glassmorphism Classes */
        .glass-panel {
            background: rgba(15, 23, 42, 0.75);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 255, 255, 0.08);
        }

        .glass-widget {
            background: rgba(11, 15, 25, 0.88);
            backdrop-filter: blur(24px);
            -webkit-backdrop-filter: blur(24px);
            border: 1px solid rgba(168, 85, 247, 0.3);
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.6);
        }

        /* Equalizer Sliders */
        .eq-slider {
            -webkit-appearance: none;
            appearance: none;
            width: 100%;
            height: 6px;
            border-radius: 6px;
            background: #1e293b;
            outline: none;
        }
        .eq-slider::-webkit-slider-thumb {
            -webkit-appearance: none;
            appearance: none;
            width: 16px;
            height: 16px;
            border-radius: 50%;
            background: #06b6d4;
            cursor: pointer;
            box-shadow: 0 0 10px #06b6d4;
            transition: all 0.2s ease;
        }
        .eq-slider::-webkit-slider-thumb:hover {
            transform: scale(1.2);
            background: #a855f7;
            box-shadow: 0 0 15px #a855f7;
        }

        .paused-spin {
            animation-play-state: paused !important;
        }
    </style>
</head>
<body class="bg-darkbg text-slate-100 min-h-screen flex flex-col overflow-x-hidden selection:bg-brand-500 selection:text-white">

    <div class="flex-1 flex flex-col lg:flex-row h-screen overflow-hidden relative">

        <!-- SIDEBAR NAVIGATION -->
        <aside class="w-full lg:w-72 glass-panel flex flex-col z-20 border-b lg:border-b-0 lg:border-l border-slate-800/80 shrink-0">
            <!-- LOGO BRANDING -->
            <div class="p-5 flex items-center justify-between border-b border-slate-800/80">
                <div class="flex items-center gap-3">
                    <div class="relative w-11 h-11 rounded-2xl bg-gradient-to-tr from-
```